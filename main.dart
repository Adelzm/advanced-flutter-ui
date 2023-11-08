import 'package:complex_ui/pages/cube_ex_page.dart';
import 'package:complex_ui/pages/drawer_ex_page.dart';
import 'package:complex_ui/pages/home_page.dart';
import 'package:complex_ui/pages/simple_ex_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Complex UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF4CE14),
        ),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/simple-example': (context) => const SimpleExPage(),
        '/drawer-example': (context) => const DrawerExPage(),
        '/cube-example': (context) => const CubeExPage(),
      },
    );
  }
}
