import 'package:flutter_test/flutter_test.dart';
import 'package:zoleta_mobprog/main.dart';

void main() {
  testWidgets('MainApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that Facebook title is displayed.
    expect(find.text('Facebook'), findsOneWidget);
  });
}
