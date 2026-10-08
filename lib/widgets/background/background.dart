import 'package:flutter/material.dart';

class OvoBackgroundPainter extends CustomPainter {
  const OvoBackgroundPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final base = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF3B4199),
          Color(0xFF3A2E8D),
          Color(0xFF34318F),
          Color(0xFF28639F),
        ],
        stops: [
          0.0,
          0.32,
          0.67,
          1.0,
        ],
      ).createShader(rect);

    canvas.drawRect(rect, base);

    final topBlue = Path();

    topBlue.moveTo(-30, 15);

    topBlue.cubicTo(
      45,
      -10,
      95,
      -12,
      135,
      8,
    );

    topBlue.cubicTo(
      172,
      27,
      198,
      5,
      220,
      -15,
    );

    topBlue.lineTo(335, -15);
    topBlue.lineTo(335, 38);

    topBlue.cubicTo(
      294,
      34,
      254,
      36,
      217,
      46,
    );

    topBlue.cubicTo(
      174,
      58,
      151,
      72,
      120,
      83,
    );

    topBlue.cubicTo(
      85,
      94,
      64,
      70,
      50,
      50,
    );

    topBlue.cubicTo(
      31,
      27,
      8,
      21,
      -30,
      15,
    );

    topBlue.close();

    final topBluePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF2D62A6),
          Color(0xFF245AA7),
          Color(0xFF2B529D),
        ],
      ).createShader(rect)
      ..maskFilter = const MaskFilter.blur(
        BlurStyle.normal,
        11,
      );

    canvas.drawPath(
      topBlue,
      topBluePaint,
    );

    final purple = Path();

    purple.moveTo(-20, 68);

    purple.cubicTo(
      35,
      48,
      73,
      56,
      111,
      73,
    );

    purple.cubicTo(
      151,
      92,
      172,
      101,
      201,
      85,
    );

    purple.cubicTo(
      229,
      70,
      242,
      44,
      275,
      38,
    );

    purple.cubicTo(
      303,
      33,
      322,
      42,
      350,
      53,
    );

    purple.lineTo(350, 112);

    purple.cubicTo(
      316,
      99,
      287,
      96,
      260,
      108,
    );

    purple.cubicTo(
      224,
      123,
      193,
      126,
      157,
      109,
    );

    purple.cubicTo(
      113,
      88,
      63,
      79,
      -20,
      105,
    );

    purple.close();

    final purplePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF343091),
          Color(0xFF47248E),
          Color(0xFF362B91),
        ],
      ).createShader(rect)
      ..maskFilter = const MaskFilter.blur(
        BlurStyle.normal,
        13,
      );

    canvas.drawPath(
      purple,
      purplePaint,
    );

    final bottomBlue = Path();

    bottomBlue.moveTo(-30, 100);

    bottomBlue.cubicTo(
      30,
      80,
      69,
      93,
      102,
      111,
    );

    bottomBlue.cubicTo(
      133,
      128,
      155,
      139,
      190,
      133,
    );

    bottomBlue.cubicTo(
      229,
      126,
      244,
      102,
      273,
      99,
    );

    bottomBlue.cubicTo(
      302,
      96,
      326,
      110,
      355,
      119,
    );

    bottomBlue.lineTo(355, 170);
    bottomBlue.lineTo(-30, 170);
    bottomBlue.close();

    final bottomBluePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF1869AA),
          Color(0xFF2382B3),
          Color(0xFF2868A6),
        ],
      ).createShader(rect)
      ..maskFilter = const MaskFilter.blur(
        BlurStyle.normal,
        10,
      );

    canvas.drawPath(
      bottomBlue,
      bottomBluePaint,
    );

    final leftGlow = Paint()
      ..shader = RadialGradient(
        center: const Alignment(-1.0, 0.45),
        radius: 0.8,
        colors: [
          const Color(0xFF1789B9).withOpacity(.55),
          const Color(0xFF1789B9).withOpacity(0),
        ],
      ).createShader(rect);

    canvas.drawRect(
      rect,
      leftGlow,
    );

    final centerGlow = Paint()
      ..shader = RadialGradient(
        center: const Alignment(.25, .05),
        radius: .75,
        colors: [
          const Color(0xFF44228F).withOpacity(.50),
          const Color(0xFF44228F).withOpacity(0),
        ],
      ).createShader(rect);

    canvas.drawRect(
      rect,
      centerGlow,
    );

    final rightGlow = Paint()
      ..shader = RadialGradient(
        center: const Alignment(1.0, .8),
        radius: .7,
        colors: [
          const Color(0xFF1D72AA).withOpacity(.42),
          const Color(0xFF1D72AA).withOpacity(0),
        ],
      ).createShader(rect);

    canvas.drawRect(
      rect,
      rightGlow,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
