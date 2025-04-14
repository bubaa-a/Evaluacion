import 'package:flutter/material.dart';

import '../widgets.dart';

class W01HomeScreen extends StatelessWidget {
  const W01HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:  20.0),
      child: Column(
        children: [
          SizedBox(height: 80),
          Row(
            children: [
              Wlogo(),
              Expanded(child: Text('')),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: WIcon(icon: Icons.menu),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
