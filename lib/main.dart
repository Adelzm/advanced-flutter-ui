import 'package:complex_ui/pages/second_act/custom_drawer_page.dart';
import 'package:complex_ui/home_page.dart';
import 'package:complex_ui/pages/first_act/fundamental_elements_page.dart';
import 'package:complex_ui/pages/third_act/atomic_drawer_page.dart';
import 'package:complex_ui/pages/third_act/my_drawer_page.dart';
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
        '/fundamental-elements': (context) => const FundamentalElementsPage(),
        '/custom-drawer': (context) => const CustomDrawerPage(),
        '/atomic-drawer': (context) => const AtomicDrawerPage(),
        '/my-drawer': (context) => const MyDrawerPage(),
      },
    );
  }
}
