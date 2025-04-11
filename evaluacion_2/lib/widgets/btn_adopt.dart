import 'package:evaluacion_2/screen/adopt_screen.dart';
import 'package:flutter/material.dart';

class BtnAdopt extends StatelessWidget {
  const BtnAdopt({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AdoptScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange[700],
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: const Text('ADOPT'),
      ),
    );
  }
}
