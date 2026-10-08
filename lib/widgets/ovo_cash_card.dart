import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

import 'background/background.dart';
import 'ovo_logo.dart';

class OvoCashCard extends StatefulWidget {
  const OvoCashCard({super.key});

  @override
  State<OvoCashCard> createState() => _OvoCashCardState();
}

class _OvoCashCardState extends State<OvoCashCard> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.25),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: CustomPaint(
          painter: const OvoBackgroundPainter(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    OvoLogo(
                      size: 22,
                      color: Colors.white70,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Cash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                const Row(
                  children: [
                    Text(
                      'Total Saldo',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.visibility_outlined,
                      size: 15,
                      color: Colors.white70,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() => _visible = !_visible),
                      child: Text(
                        _visible ? 'Rp 1.250.000' : 'Tap untuk lihat',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(6, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 11,
                            backgroundColor: AppColors.primary,
                            child: Text(
                              'P',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'OVO Points',
                            style: TextStyle(
                              color: AppColors.primaryDark,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: 18,
                            color: AppColors.primaryDark,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _CashAction(Icons.add_circle_rounded, 'Top Up'),
                    _CashAction(Icons.arrow_circle_up_rounded, 'Transfer'),
                    _CashAction(Icons.savings_outlined, 'Tarik Tunai'),
                    _CashAction(Icons.list_alt_rounded, 'History'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CashAction extends StatelessWidget {
  final IconData icon;
  final String label;
  const _CashAction(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
