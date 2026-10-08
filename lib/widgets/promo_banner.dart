import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  final double width;
  final String imagePath;
  final VoidCallback? onTap;

  const PromoBanner({
    super.key,
    required this.width,
    this.imagePath = 'assets/images/promo_clbk.jpg',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(imagePath, width: width, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
