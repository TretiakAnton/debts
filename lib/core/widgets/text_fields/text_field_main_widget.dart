import 'package:debts/core/themes/colors.dart';
import 'package:debts/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TextFieldMainWidget extends StatelessWidget {
  const TextFieldMainWidget({
    this.hintText,
    this.textInputType,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    this.isEnabled,
    this.readOnly,
    this.prefixIcon,
    this.initialValue,
    Key? key,
  }) : super(key: key);

  final String? hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isEnabled;
  final bool? readOnly;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: textInputType,
      initialValue: initialValue,
      enabled: isEnabled,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
        hintText: hintText,
        hintStyle: AppTextStyles.size14Regular888(context),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primaryContainer,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}

class TextFieldPasswordMainWidget extends StatefulWidget {
  const TextFieldPasswordMainWidget({
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
  State<TextFieldPasswordMainWidget> createState() =>
      _TextFieldPasswordMainWidgetState();
}

class _TextFieldPasswordMainWidgetState
    extends State<TextFieldPasswordMainWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isVisible ? false : true,
      onChanged: widget.onChanged,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 18, 0, 18),
        hintText: widget.hintText,
        hintStyle: AppTextStyles.size14Regular888(context),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primaryContainer,
        suffixIcon: GestureDetector(
          onTap: () {
            isVisible = !isVisible;
            setState(() {});
          },
          child: isVisible
              ? const Icon(
                  Icons.visibility,
                  color: AppColors.textGreyLight888B8E,
                )
              : const Icon(
                  Icons.visibility_off,
                  color: AppColors.textGreyLight888B8E,
                ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
