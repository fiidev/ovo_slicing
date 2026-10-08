import 'package:flutter/material.dart';

/// Logo resmi QRIS menggunakan aset gambar.
class QrisLogo extends StatelessWidget {
  final double? size;
  final double? width;
  final double? height;
  final Color? color;

  const QrisLogo({
    super.key,
    this.size,
    this.width,
    this.height,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final double? effectiveHeight =
        height ?? size ?? (width == null ? 16 : null);
    final isWhite = color == Colors.white;

    return Image.asset(
      isWhite ? 'assets/images/qris_white.png' : 'assets/images/qris.png',
      width: width,
      height: effectiveHeight,
      fit: BoxFit.contain,
      color: isWhite ? null : color,
    );
  }
}
