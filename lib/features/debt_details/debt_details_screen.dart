import 'package:debts/core/themes/text_styles.dart';
import 'package:debts/core/widgets/buttons/button_yellow_border_widget.dart';
import 'package:debts/core/widgets/divider.dart';
import 'package:debts/features/debt_details/cubit/debt_details_cubit.dart';
import 'package:debts/features/debt_details/widgets/debt_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DebtDetailsScreen extends StatelessWidget {
  const DebtDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DebtDetailsCubit>();
    return SafeArea(
      child: BlocBuilder<DebtDetailsCubit, DebtDetailState>(
        builder: (context, state) {
          final debt = state.selectedDebt;
          if (debt == null) {
            return const SizedBox();
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
              title: Text(
                debt.label,
                style: AppTextStyles.size17RegularWhite(context),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DebtDetailWidget(
                    title: 'Id',
                    data: debt.id.toString(),
                  ),
                  const SizedBox(height: 30),
                  DebtDetailWidget(
                    title: 'Description',
                    data: debt.description,
                  ),
                  const SizedBox(height: 30),
                  DebtDetailWidget(
                    title: 'Date of debt incurrence',
                    data: debt.createdAt,
                  ),
                  const SizedBox(height: 30),
                  DebtDetailWidget(
                    title: 'Due date for payment',
                    data: debt.endAt,
                  ),
                  const SizedBox(height: 30),
                  DebtDetailWidget(
                    title: 'Amount owed',
                    data: '${debt.amount} USD',
                  ),
                  const SizedBox(height: 30),
                  DebtDetailWidget(
                    title: 'Status',
                    data: debt.statusTitle,
                  ),
                  const DividerWidget(tP: 10, bP: 10),
                  DebtDetailWidget(
                    title: 'Debtor name',
                    data: debt.debtName,
                  ),
                  const SizedBox(height: 30),
                  DebtDetailWidget(
                    title: 'Debtor contacts',
                    data: debt.debtContacts,
                  ),
                  const SizedBox(height: 30),
                  ButtonYellowBorderWidget(
                    text: 'Upload documents',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 30),
                  Visibility(
                    visible: debt.statusId != 3,
                    child: ButtonYellowBorderWidget(
                      text: 'Change status',
                      onPressed: () async => await bloc.updateDebts(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
