import 'package:debts/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TextFieldTradeWidget extends StatelessWidget {
  const TextFieldTradeWidget({
    this.hintText,
    this.textInputType,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  final String? hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(12, 14, 0, 14),
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 14, 12, 14),
          child: suffixIcon,
        ),
        hintStyle: AppTextStyles.size12Regular888(context),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onBackground,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
