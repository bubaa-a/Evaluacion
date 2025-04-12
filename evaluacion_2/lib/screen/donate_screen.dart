import 'package:evaluacion_2/widgets/w_divider.dart';
import 'package:evaluacion_2/widgets/w_donate/wcont_imag.dart';
import 'package:evaluacion_2/widgets/w_donate/wcont_text.dart';
import 'package:evaluacion_2/widgets/w_home/w_01_home_screen.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const W01HomeScreen(),
            const WDivider(),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const WcontImag(),
            ),
            WcontText(),
          ],
        ),
      ),
    );
  }
}
