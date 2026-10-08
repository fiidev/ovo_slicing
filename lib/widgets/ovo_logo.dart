import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// Wordmark "OVO" gaya outline (dibuat dengan teks, bukan logo asli).
class OvoLogo extends StatelessWidget {
  final double size;
  final Color color;
  const OvoLogo({super.key, this.size = 34, this.color = AppColors.primary});

  @override
  Widget build(BuildContext context) {
    return Text(
      'OVO',
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w300,
        letterSpacing: 1.5,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = color,
      ),
    );
  }
}
