import 'package:flutter/material.dart';
import '../theme.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    super.key,
    required this.text,
    this.fontSize = 10,
    this.fontWeight = FontWeight.normal,
    this.color = CustomTheme.grey,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
