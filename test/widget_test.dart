import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pPiSjz/main.dart';

void main() {
  testWidgets('List opens detail and marks favorite', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Java'), findsOneWidget);
    expect(find.byIcon(Icons.star), findsNothing);

    await tester.tap(find.text('Java'));
    await tester.pumpAndSettle();

    expect(find.text('Dodaj u favorite'), findsOneWidget);

    await tester.tap(find.text('Dodaj u favorite'));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.star), findsOneWidget);
  });
}
