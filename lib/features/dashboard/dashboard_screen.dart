import 'package:debts/core/routing/pages.dart';
import 'package:debts/core/themes/colors.dart';
import 'package:debts/core/widgets/text_fields/text_field_main_widget.dart';
import 'package:debts/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:debts/features/dashboard/widgets/chart.dart';
import 'package:debts/features/dashboard/widgets/debt_tile.dart';
import 'package:debts/features/debt_details/cubit/debt_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DashboardCubit>();
    if (!bloc.state.isInited) {
      bloc.init();
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Current debts'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            GoRouter.of(context).push(Pages.toAddDebtScreen);
          },
          child: const Icon(
            Icons.add,
            color: AppColors.activeYellowF7E948,
          ),
        ),
        body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            if (!state.isInited) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final debts = bloc.debts;
            return Padding(
              padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: debts.isNotEmpty,
                    child: Column(
                      children: [
                        Chart(
                          amountAssigned: debts
                              .where((element) => element.statusId == 1)
                              .length,
                          amountInProgress: debts
                              .where((element) => element.statusId == 2)
                              .length,
                          amountDone: debts
                              .where((element) => element.statusId == 3)
                              .length,
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  TextFieldMainWidget(
                    hintText: 'Search by title or status',
                    onChanged: (value) {
                      bloc.searchChanged(value);
                    },
                  ),
                  const SizedBox(height: 20),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: debts.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (_, int index) {
                      return DebtTile(
                        debt: debts[index],
                        onTap: () {
                          bloc.searchChanged('');
                          context
                              .read<DebtDetailsCubit>()
                              .setSelected(debts[index]);
                          GoRouter.of(context).push(Pages.toDebtDetails);
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
