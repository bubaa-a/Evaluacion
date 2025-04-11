import 'package:evaluacion_2/screen/donate_screen.dart';
import 'package:flutter/material.dart';

class BtnDonate extends StatelessWidget {
  const BtnDonate({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DonateScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: const Text('DONATE'),
      ),
    );
  }
}
