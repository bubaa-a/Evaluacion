import 'package:flutter/material.dart';

class Wlogo extends StatelessWidget {
  final double height;
  const Wlogo({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'home');
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Image.asset('assets/logo2.png', height: height),
      ),
    );
  }
}