import 'package:evaluacion_2/widgets/w_icon.dart';
import 'package:evaluacion_2/widgets/wlogo.dart';
import 'package:flutter/material.dart';

class W01HomeScreen extends StatelessWidget {
  const W01HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wlogo(),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: WIcon(icon: Icons.menu),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
