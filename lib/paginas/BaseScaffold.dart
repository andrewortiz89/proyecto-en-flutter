
// BaseScaffold.dart
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;

  const BaseScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 78, 189),
        title: const Text(''),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Navegación a la página de Home
              Navigator.pushNamed(context, '/home');
            },
          ),
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {
              // Navegación a la página de Login
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
      body: body,
    );
  }
}
