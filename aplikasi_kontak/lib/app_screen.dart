import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() {
    return _AppScreenState();
  }
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('Kontak');
  }
}
