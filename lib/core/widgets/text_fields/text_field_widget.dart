import 'package:debts/core/themes/colors.dart';
import 'package:debts/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    this.hintText,
    this.textInputType,
    this.controller,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  final String? hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
        hintText: hintText,
        hintStyle: AppTextStyles.size16Regular888(context),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onBackground,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class TextFieldPasswordWidget extends StatefulWidget {
  const TextFieldPasswordWidget({
    this.hintText,
    this.controller,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  State<TextFieldPasswordWidget> createState() =>
      _TextFieldPasswordWidgetState();
}

class _TextFieldPasswordWidgetState extends State<TextFieldPasswordWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: isVisible ? false : true,
      decoration: InputDecoration(
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
        contentPadding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
        hintText: widget.hintText ?? 'Enter your password',
        hintStyle: AppTextStyles.size16Regular888(context),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onBackground,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
