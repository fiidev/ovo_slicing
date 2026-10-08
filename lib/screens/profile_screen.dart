import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../theme/app_colors.dart';
import '../widgets/profile_menu_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(22, 40, 22, 24),
        children: [
          const Text('Profile',
              style: TextStyle(
                  fontSize: 34, fontWeight: FontWeight.w800, color: AppColors.textDark)),
          const SizedBox(height: 20),
          _userCard(),
          const SizedBox(height: 14),
          _loyaltyButton(),
          const SizedBox(height: 24),
          _section('Akun', accountMenus),
          _section('Bantuan', helpMenus),
          _section('Keamanan', securityMenus),
        ],
      ),
    );
  }

  Widget _userCard() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFDDDDE6)),
      ),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFFE6E0F8),
            child: Icon(Icons.person, color: AppColors.primary, size: 28),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dummyUserName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                SizedBox(height: 4),
                Text(dummyUserPhone,
                    style: TextStyle(fontSize: 14, color: AppColors.textDark)),
              ],
            ),
          ),
          Text('Ubah',
              style: TextStyle(
                  color: AppColors.link, fontWeight: FontWeight.w700, fontSize: 15)),
        ],
      ),
    );
  }

  Widget _loyaltyButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFDDDDE6)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.qr_code_scanner_rounded, size: 32),
          SizedBox(width: 12),
          Text('Loyalty Code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
        ],
      ),
    );
  }

  Widget _section(String title, List<ProfileMenu> menus) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 4),
          child: Text(title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.textDark)),
        ),
        for (int i = 0; i < menus.length; i++)
          ProfileMenuTile(menu: menus[i], showDivider: i != menus.length - 1),
        const SizedBox(height: 10),
      ],
    );
  }
}
