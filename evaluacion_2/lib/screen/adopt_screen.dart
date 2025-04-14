import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AdoptScreen extends StatelessWidget {
  const AdoptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Ayuda'),
        icon: const Icon(Icons.chat_bubble_outline),
        backgroundColor: Colors.orange,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              W01AdoptScreen(),
              W02AdoptScreen(),
              W03AdoptScreen(),
              W04AdoptScreen(),
              W05AdoptScreen(),
              ],
          ),
        ),
      ),
    );
  }
}
