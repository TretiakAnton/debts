import 'package:debts/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class DebtDetailWidget extends StatelessWidget {
  const DebtDetailWidget({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.size14Regular888(context),
        ),
        const SizedBox(height: 5),
        Flexible(
          child: Text(
            data,
            style: AppTextStyles.size17RegularWhite(context),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
