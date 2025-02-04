import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startApp, {super.key});

  final void Function() startApp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/profile-logo.png',
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startApp,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Get Started'),
          )
        ],
      ),
    );
  }
}
