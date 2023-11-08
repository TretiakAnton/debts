import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    this.tP,
    this.bP,
    Key? key,
  }) : super(key: key);

  final double? tP;
  final double? bP;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: tP ?? 0, bottom: bP ?? 0),
      child: Divider(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        height: 0,
        thickness: 2,
      ),
    );
  }
}
