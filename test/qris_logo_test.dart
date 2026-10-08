import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ovo/widgets/qris_logo.dart';

void main() {
  testWidgets('QrisLogo renders Image widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: QrisLogo(size: 15),
          ),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
    final image = tester.widget<Image>(find.byType(Image));
    expect(image.image, isA<AssetImage>());
    final assetImage = image.image as AssetImage;
    expect(assetImage.assetName, 'assets/images/qris_white.png');
  });

  testWidgets('QrisLogo renders black image when color is not white', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: QrisLogo(color: Colors.black),
          ),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
    final image = tester.widget<Image>(find.byType(Image));
    final assetImage = image.image as AssetImage;
    expect(assetImage.assetName, 'assets/images/qris.png');
    expect(image.color, Colors.black);
  });
}
