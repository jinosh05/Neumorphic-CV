import 'package:flutter/material.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';

class ShadowedText extends StatelessWidget {
  const ShadowedText({
    super.key,
    required this.text,
    required this.textColor,
    required this.shadowColor,
  });

  final String text;
  final Color textColor, shadowColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppText.b3b!.gilda().copyWith(
        color: textColor,
        shadows: [Shadow(blurRadius: 0.5, color: shadowColor)],
      ),
    );
  }
}
