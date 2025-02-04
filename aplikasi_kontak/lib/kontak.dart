import 'package:aplikasi_kontak/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kontak/start_screen.dart';

class Kontak extends StatefulWidget {
  const Kontak({super.key});

  @override
  State<Kontak> createState() {
    return _KontakState();
  }
}

class _KontakState extends State<Kontak> {
  var _activeScreen = 'start-screen';

  void _switchScreen() {
    setState(() {
      _activeScreen = 'app-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(_switchScreen);

    if (_activeScreen == 'app-screen') {
      screenWidget = const AppScreen();
    }

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
