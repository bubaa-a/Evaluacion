import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
