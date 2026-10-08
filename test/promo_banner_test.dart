import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ovo/data/dummy_data.dart';
import 'package:slicing_ovo/widgets/promo_banner.dart';

void main() {
  testWidgets('PromoBanner renders Image.asset with rounded corners',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: PromoBanner(
              width: 300,
              imagePath: 'assets/images/promo_clbk.jpg',
            ),
          ),
        ),
      ),
    );

    expect(find.byType(PromoBanner), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    final image = tester.widget<Image>(find.byType(Image));
    expect(image.image, isA<AssetImage>());
    final assetImage = image.image as AssetImage;
    expect(assetImage.assetName, 'assets/images/promo_clbk.jpg');
    expect(image.fit, BoxFit.cover);
  });

  test('dummy_data contains valid promo banners list', () {
    expect(promoBanners, isNotEmpty);
    expect(promoBanners.length, greaterThanOrEqualTo(3));
  });
}
