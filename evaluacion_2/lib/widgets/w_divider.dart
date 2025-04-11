import 'package:flutter/material.dart';

class WDivider extends StatelessWidget {
  final double thickness;
  final double indent;
  final double endIndent;
  final Color color;
  const WDivider({
    super.key,
    this.thickness = 1.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
    );
  }
}
