import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class PromoChip extends StatelessWidget {
  final VoidCallback? onTap;
  const PromoChip({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.35),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.discount_rounded, color: AppColors.primaryDark, size: 26),
            SizedBox(width: 8),
            Text('Promo',
                style: TextStyle(
                    color: AppColors.primaryDark,
                    fontWeight: FontWeight.w700,
                    fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
