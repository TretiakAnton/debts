import 'package:debts/core/themes/colors.dart';
import 'package:debts/core/themes/text_styles.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';
import 'package:flutter/material.dart';

class DebtTile extends StatelessWidget {
  const DebtTile({
    Key? key,
    required this.debt,
    required this.onTap,
  }) : super(key: key);
  final Debt debt;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.inActiveYellowF5E966),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListTile(
          onTap: () => onTap(),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColors.textGreyLight888B8E,
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    debt.label,
                    style: AppTextStyles.size16Regular888(context),
                  ),
                  Text(
                    debt.statusTitle,
                    style: AppTextStyles.size16Regular888(context).copyWith(
                      color: debt.statusColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${debt.amount} USD',
                    style: AppTextStyles.size16Regular888(context),
                  ),
                  Text(
                    debt.createdAt,
                    style: AppTextStyles.size16Regular888(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
