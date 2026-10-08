import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../theme/app_colors.dart';
import '../widgets/category_tabs.dart';
import '../widgets/info_card.dart';
import '../widgets/ovo_cash_card.dart';
import '../widgets/ovo_logo.dart';
import '../widgets/promo_banner.dart';
import '../widgets/promo_chip.dart';
import '../widgets/service_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.bgTop, AppColors.bgBottom],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(22, 14, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [OvoLogo(), PromoChip()],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: OvoCashCard(),
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              InfoCard(width: w * 0.86),
                              const SizedBox(width: 10),
                              InfoCard(width: w * 0.86),
                            ],
                          ),
                        ),
                        // const Positioned(right: -6, top: -40, child: StampBadge()),
                      ],
                    ),
                    const SizedBox(height: 18),
                    CategoryTabs(
                      tabs: homeTabs,
                      selected: _tab,
                      onChanged: (i) => setState(() => _tab = i),
                    ),
                    const SizedBox(height: 10),
                    ServiceGrid(items: favoriteServices),
                    const SizedBox(height: 10),
                    Container(height: 8, color: const Color(0xFFF4F4F8)),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: promoBanners.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          return PromoBanner(
                            width: w * 0.86,
                            imagePath: promoBanners[index],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
