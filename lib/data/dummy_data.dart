import 'package:flutter/material.dart';

class ServiceItem {
  final String label;
  final IconData icon;
  final Color bg;
  final Color fg;
  final String? badge;
  const ServiceItem(this.label, this.icon, this.bg, this.fg, {this.badge});
}

class ProfileMenu {
  final String title;
  final IconData icon;
  final bool hasUpgrade;
  final bool isNew;
  const ProfileMenu(
    this.title,
    this.icon, {
    this.hasUpgrade = false,
    this.isNew = false,
  });
}

const dummyUserName = 'Nama Pengguna';
const dummyUserPhone = '0812-3456-7890';

const favoriteServices = <ServiceItem>[
  ServiceItem(
    'Nabung by\nSuperbank',
    Icons.savings_rounded,
    Color(0xFFE6E0F8),
    Color(0xFF4F2BC9),
    badge: 'BARU',
  ),
  ServiceItem(
    'Pinjaman',
    Icons.payments_rounded,
    Color(0xFFE6E0F8),
    Color(0xFF4F2BC9),
    badge: '100JT',
  ),
  ServiceItem(
    'Uang\nElektronik',
    Icons.contactless_rounded,
    Color(0xFFFFEBDD),
    Color(0xFFF2762E),
    badge: 'Rp 1',
  ),
  ServiceItem(
    'Angsuran\nKredit',
    Icons.receipt_long_rounded,
    Color(0xFFFFE1EA),
    Color(0xFFE5365F),
  ),
  ServiceItem(
    'Pulsa/Paket\nData',
    Icons.smartphone_rounded,
    Color(0xFFDDEBFF),
    Color(0xFF2F6FE0),
    badge: 'PROMO',
  ),
  ServiceItem(
    'PLN',
    Icons.bolt_rounded,
    Color(0xFFFFF1D6),
    Color(0xFFF5A300),
    badge: 'PROMO',
  ),
  ServiceItem(
    'Air PDAM',
    Icons.water_drop_rounded,
    Color(0xFFDDF1FF),
    Color(0xFF1EA0E8),
  ),
  ServiceItem(
    'Internet &\nTV Kabel',
    Icons.smart_display_rounded,
    Color(0xFFFFE6DD),
    Color(0xFFE8552E),
  ),
];

const homeTabs = ['Favorit', 'Finansial', 'Hiburan', 'Pilihan Lain'];

const promoBanners = <String>[
  'assets/images/promo_clbk.jpg',
  'assets/images/promo_new_user.jpg',
  'assets/images/promo_double.jpg',
  'assets/images/promo_sos.jpg',
  'assets/images/promo_bayar.jpg',
];

const accountMenus = <ProfileMenu>[
  ProfileMenu(
    'OVO Premier',
    Icons.workspace_premium_outlined,
    hasUpgrade: true,
  ),
  ProfileMenu('OVO Points', Icons.paid_rounded),
  ProfileMenu('OVO Stamp', Icons.star_rounded),
  ProfileMenu('Aplikasi Terhubung', Icons.link_rounded, isNew: true),
];

const helpMenus = <ProfileMenu>[
  ProfileMenu('Pusat Bantuan', Icons.help_rounded),
];

const securityMenus = <ProfileMenu>[
  ProfileMenu('Ubah PIN', Icons.lock_outline_rounded),
  ProfileMenu('Biometrik', Icons.fingerprint_rounded),
];
