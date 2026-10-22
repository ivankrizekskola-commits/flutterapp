import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ppisjz/main.dart';

void main() {
  testWidgets('List opens detail and marks favorite', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Java'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.chevron_right).first);
    await tester.pumpAndSettle();

    expect(find.text('Dodaj u favorite'), findsOneWidget);

    await tester.tap(find.text('Dodaj u favorite'));
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.chevron_right).first);
    await tester.pumpAndSettle();

    expect(find.text('U favoritima'), findsOneWidget);
  });
}
