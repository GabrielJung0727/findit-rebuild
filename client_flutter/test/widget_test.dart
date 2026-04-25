import 'package:findit/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FinditApp builds', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: FinditApp()));
    await tester.pumpAndSettle();
    expect(find.text('Findit'), findsOneWidget);
  });
}
