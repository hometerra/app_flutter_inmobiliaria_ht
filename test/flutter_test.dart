import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  void main() {
    test('Suma dos números', () {
      expect(sum(2, 3), equals(5));
    });
  }

  int sum(int a, int b) {
    return a + b;
  }
  testWidgets('Prueba de widget', (WidgetTester tester) async {
    // Construir el widget y activar un trigger
    await tester.pumpWidget(const MyWidget());

    // Verificar que el widget contiene un texto específico
    expect(find.text('Hello World'), findsOneWidget);

    // Realizar alguna acción en el widget
    await tester.tap(find.byKey(const Key('my_button')));
    await tester.pump();

    // Verificar que el widget se actualiza después de la acción
    expect(find.text('Button Pressed'), findsOneWidget);
  });
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hola Mundo'),
              ElevatedButton(
                key: const Key('my_button'),
                onPressed: () {
                  (context as Element).markNeedsBuild();
                },
                child: const Text('Presioname'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
