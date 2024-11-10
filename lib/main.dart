import 'package:flutter/material.dart';
import 'package:soft1/paginas/PaginaUsers.dart';
import 'package:soft1/paginas/PaginaHome.dart';
import 'package:soft1/paginas/Inicio.dart';
import 'package:soft1/paginas/Registro.dart';
import 'package:soft1/paginas/Nosotros.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 1;

  // Lista de páginas para el BottomNavigationBar
  final List<Widget> _paginas = [
    const PaginaHome(),  // Home Principal
    const PaginaUsers(), // Login
    const Inicio(),//Inicio
    const Registro(),
    const Nosotros(),

    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Etiquetas Express',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(255, 80, 78, 189),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "Login",
            ),
          ],
        ),
      ),
    );
  }
}


