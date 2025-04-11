import 'package:evaluacion_2/widgets/w_home/w_01_home_screen.dart';
import 'package:evaluacion_2/widgets/w_home/w_02_home_screen.dart';
import 'package:evaluacion_2/widgets/w_home/w_03_home_screen.dart';
import 'package:evaluacion_2/widgets/w_home/w_04_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const W01HomeScreen(),
            const W02HomeScreen(),
            const W03HomeScreen(),
            const W04HomeScreen(),
          ],
        ),
      ),
    );
  }
}
