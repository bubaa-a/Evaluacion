import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Container(
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
        ),
      ),
    );
  }
}
