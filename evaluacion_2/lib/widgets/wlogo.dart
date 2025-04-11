import 'package:flutter/material.dart';

class Wlogo extends StatelessWidget {
  const Wlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Image.asset('assets/logo2.png', height: 80),
    );
  }
}
