import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.textOverflow = TextOverflow.ellipsis,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.center,
  });

  final FontWeight fontWeight;
  final Color color;
  final TextOverflow? textOverflow;
  final String text;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'SfPro',
      ),
    );
  }
}
