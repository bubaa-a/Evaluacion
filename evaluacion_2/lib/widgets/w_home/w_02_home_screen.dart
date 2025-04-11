import 'package:evaluacion_2/widgets/btn_adopt.dart';
import 'package:evaluacion_2/widgets/btn_donate.dart';
import 'package:flutter/material.dart';

class W02HomeScreen extends StatelessWidget {
  const W02HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: BtnDonate()),
        Expanded(child: BtnAdopt()),
      ],
    );
  }
}
