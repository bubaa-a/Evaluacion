import 'package:flutter/material.dart';

class Wlogo extends StatelessWidget {
  const Wlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'home');
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Image.asset('assets/logo2.png', height: 80),
      ),
    );
  }
}
