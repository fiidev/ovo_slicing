import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ovo/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const OvoCloneApp());
    expect(find.byType(OvoCloneApp), findsOneWidget);
  });
}
