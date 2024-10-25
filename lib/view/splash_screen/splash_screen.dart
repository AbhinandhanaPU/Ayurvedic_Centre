import 'package:ayurvedic_centre/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
              (route) => false);
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/background.jpeg',
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
