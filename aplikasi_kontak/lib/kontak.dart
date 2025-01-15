import 'package:aplikasi_kontak/start_screen.dart';
import 'package:flutter/material.dart';

class Kontak extends StatefulWidget {
  const Kontak({super.key});

  @override
  State<Kontak> createState() {
    return _KontakState();
  }
}

class _KontakState extends State<Kontak> {
  @override
  Widget build(BuildContext context) {
    const Widget screenWidget = StartScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 255, 138, 177),
                Color.fromARGB(255, 255, 158, 190),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
