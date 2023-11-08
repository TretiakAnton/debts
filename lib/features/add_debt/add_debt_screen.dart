import 'package:debts/core/themes/text_styles.dart';
import 'package:debts/core/widgets/buttons/button_yellow_border_widget.dart';
import 'package:debts/core/widgets/divider.dart';
import 'package:debts/features/add_debt/cubit/add_debt_cubit.dart';
import 'package:debts/features/add_debt/widgets/debt_add_widget.dart';
import 'package:debts/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddDebtScreen extends StatelessWidget {
  const AddDebtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddDebtCubit>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
          title: Text(
            'Add debt',
            style: AppTextStyles.size17RegularWhite(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DebtAddWidget(
                  title: 'Title',
                  onChanged: (value) => bloc.titleChanged(value),
                ),
                const SizedBox(height: 30),
                DebtAddWidget(
                  title: 'Description',
                  onChanged: (value) => bloc.descriptionChanged(value),
                ),
                const SizedBox(height: 30),
                DebtAddWidget(
                  title: 'Date of debt incurrence',
                  onChanged: (value) => bloc.startChanged(value),
                ),
                const SizedBox(height: 30),
                DebtAddWidget(
                  title: 'Due date for payment',
                  onChanged: (value) => bloc.endChanged(value),
                ),
                const SizedBox(height: 30),
                DebtAddWidget(
                  title: 'Amount owed',
                  onChanged: (value) => bloc.amountChanged(value),
                ),
                const DividerWidget(tP: 15, bP: 15),
                DebtAddWidget(
                  title: 'Debtor name',
                  onChanged: (value) => bloc.nameChanged(value),
                ),
                const SizedBox(height: 30),
                DebtAddWidget(
                  title: 'Debtor contacts',
                  onChanged: (value) => bloc.contactsChanged(value),
                ),
                const SizedBox(height: 30),
                ButtonYellowBorderWidget(
                  text: 'Add',
                  onPressed: () async {
                    await bloc.postDebt();
                    if (context.mounted) {
                      await context.read<DashboardCubit>().getDebts();
                    }
                    if (context.mounted) {
                      context.pop();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
