import 'package:debts/core/themes/text_styles.dart';
import 'package:debts/core/widgets/text_fields/text_field_main_widget.dart';
import 'package:flutter/material.dart';

class DebtAddWidget extends StatelessWidget {
  const DebtAddWidget({
    Key? key,
    required this.title,
    required this.onChanged,
  }) : super(key: key);
  final String title;
  final Function(String) onChanged;

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
        TextFieldMainWidget(
          onChanged: (String value) => onChanged(value),
        ),
      ],
    );
  }
}
