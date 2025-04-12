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
      body: SafeArea(
        // Opcional, para evitar que el contenido se tape con la barra de estado
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              W01HomeScreen(),
              W02HomeScreen(),
              W03HomeScreen(),
              W04HomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
