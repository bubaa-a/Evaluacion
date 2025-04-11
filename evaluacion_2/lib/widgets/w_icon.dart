import 'package:flutter/material.dart';

class WIcon extends StatelessWidget {
  final IconData icon;
  const WIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Icon(icon, color: Colors.black, size: 50)]);
  }
}
