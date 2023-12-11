import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Terra Bienes Raices'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo de la empresa
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Image.network(
                'https://hometerrabr.com/wp-content/uploads/2023/04/rediseno-logo-home-terra-final-3.png', // Reemplaza 'tu_logo.png' con el nombre de tu imagen
                height: 200.0,
                width: 200.0,
              ),
            ),
            // Campo de texto para el usuario
            const TextField(
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            // Campo de texto para la contraseña
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            const SizedBox(height: 20.0),
            // Botón de login
            ElevatedButton(
              onPressed: () {
                // Coloca aquí la lógica de autenticación
                // Por ahora, simplemente imprime un mensaje
                print('Botón de login presionado');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900], // Color azul marino
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
