import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../theme/app_colors.dart';

class ProfileMenuTile extends StatelessWidget {
  final ProfileMenu menu;
  final bool showDivider;
  const ProfileMenuTile({super.key, required this.menu, this.showDivider = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              children: [
                Icon(menu.icon,
                    size: 26,
                    color: menu.hasUpgrade ? AppColors.primary : AppColors.textDark),
                const SizedBox(width: 18),
                Expanded(
                  child: Text(menu.title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textDark)),
                ),
                if (menu.isNew)
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                        color: AppColors.badgeRed,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('NEW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w800)),
                  ),
                if (menu.hasUpgrade)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text('Upgrade',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15)),
                  )
                else
                  const Icon(Icons.chevron_right_rounded, size: 28),
              ],
            ),
          ),
        ),
        if (showDivider) const Divider(height: 1, color: AppColors.divider),
      ],
    );
  }
}
