import 'package:flutter/material.dart';

class W04AdoptScreen extends StatelessWidget {
  const W04AdoptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return // Texto de bienvenida
    Center(
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Welcome to WWFGifts',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
