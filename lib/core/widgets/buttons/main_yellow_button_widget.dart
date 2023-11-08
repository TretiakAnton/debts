import 'package:debts/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class MainYellowButtonWidget extends StatelessWidget {
  const MainYellowButtonWidget({
    required this.text,
    required this.onPressed,
    this.isSpinnerLoading = false,
    this.isButtonValid = true,
    Key? key,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final bool isSpinnerLoading;
  final bool isButtonValid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          disabledBackgroundColor: const Color(0xFF4D4B22),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: (isSpinnerLoading || !isButtonValid) ? null : onPressed,
        child: isSpinnerLoading
            ? const CircularProgressIndicator()
            : Text(
                text,
                style: AppTextStyles.size14Medium111315(context),
              ),
      ),
    );
  }
}

class RedGreenButton extends StatelessWidget {
  const RedGreenButton({
    required this.text,
    required this.onPressed,
    this.vPadding,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final double? vPadding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: vPadding ?? 0),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          disabledBackgroundColor: const Color(0xFF4D4B22),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.size12MediumWhite(context),
        ),
      ),
    );
  }
}
