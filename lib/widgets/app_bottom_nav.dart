import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'qris_logo.dart';

class AppBottomNav extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  const AppBottomNav({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).padding.bottom;
    return Container(
      height: 68 + bottom,
      padding: EdgeInsets.only(bottom: bottom),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppColors.divider)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              _item(0, Icons.home_rounded, 'Home'),
              _item(1, Icons.paid_rounded, 'Finance'),
              const Expanded(child: SizedBox()),
              _item(3, Icons.notifications_rounded, 'Inbox', badge: '36'),
              _item(4, Icons.person_rounded, 'Profile'),
            ],
          ),
          Positioned(
            top: -22,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => onTap(2),
                child: Column(
                  children: [
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                        border: Border.all(color: Colors.white, width: 3),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.primary.withOpacity(0.35),
                              blurRadius: 10),
                        ],
                      ),
                      child: const Center(child: QrisLogo(size: 15)),
                    ),
                    const SizedBox(height: 2),
                    Text('Pay',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: index == 2 ? AppColors.primary : AppColors.textGrey)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _item(int i, IconData icon, String label, {String? badge}) {
    final active = index == i;
    final color = active ? AppColors.primary : AppColors.textGrey;
    return Expanded(
      child: InkWell(
        onTap: () => onTap(i),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(icon, color: color, size: 30),
                if (badge != null)
                  Positioned(
                    right: -10,
                    top: -4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      decoration: BoxDecoration(
                          color: AppColors.badgeRed,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(badge,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 3),
            Text(label,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w700, color: color)),
          ],
        ),
      ),
    );
  }
}
