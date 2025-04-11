import 'package:flutter/material.dart';

class W03HomeScreen extends StatelessWidget {
  const W03HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/elephant.jpg',
      height: 370,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
