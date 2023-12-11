

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_flutter_inmobiliaria/main.dart';

void main() {
  testWidgets('Prueba de contador', (WidgetTester tester) async {
    // Crea nuestra aplicación y activa un trigger
    await tester.pumpWidget(const MyApp());

    // Verifica que el contador inicialmente muestra 0
    expect(find.text('0'), findsOneWidget);

    // Presiona el botón para incrementar el contador
    await tester.tap(find.byKey(const Key('increment_button')));
    // Vuelve a construir el widget después de la acción del tap
    await tester.pump();

    // Verifica que el contador ahora muestra 1
    expect(find.text('1'), findsOneWidget);

    // Puedes agregar más pruebas según sea necesario para tu lógica específica del contador
  });
}

