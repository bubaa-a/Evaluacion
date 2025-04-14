import 'package:flutter/material.dart';

import '../widgets.dart';

class W02AdoptScreen extends StatelessWidget {
  const W02AdoptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          Wlogo(height: 40),
          const SizedBox(width: 20),
          const Text(
            'WWF',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.blue,
            ),
          ),
          const Text(
            'Gifts',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          const Spacer(flex: 3 ,),
          const Icon(Icons.search, size: 40),
          const Spacer(flex: 1,),
          Stack(
            children: [
              const Icon(Icons.shopping_cart_outlined, size: 40),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: const Text(
                    '0',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(flex: 1,),
          WIcon(icon: Icons.menu),
        ],
      ),
    );
  }
}
