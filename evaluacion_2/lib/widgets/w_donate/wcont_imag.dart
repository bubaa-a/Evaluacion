import 'package:flutter/material.dart';

class WcontImag extends StatelessWidget {
  const WcontImag({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/elephant_donate.jpg',
      height: 300,
      fit: BoxFit.cover,
    );
  }
}
