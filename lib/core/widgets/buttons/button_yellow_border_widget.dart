import 'package:debts/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonYellowBorderWidget extends StatelessWidget {
  const ButtonYellowBorderWidget({
    required this.text,
    required this.onPressed,
    this.vPadding,
    this.widget,
    Key? key,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final double? vPadding;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.symmetric(vertical: vPadding ?? 24),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
          disabledBackgroundColor: const Color(0xFF4D4B22),
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: widget ?? const SizedBox(),
            ),
            Text(
              text,
              style: AppTextStyles.size14RegularActiveYellow(context),
            ),
          ],
        ),
      ),
    );
  }
}
