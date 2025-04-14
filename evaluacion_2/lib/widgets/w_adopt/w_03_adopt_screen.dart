import 'package:flutter/material.dart';

class W03AdoptScreen extends StatelessWidget {
  const W03AdoptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/panda.jpg',
          height: 370,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: const Icon(Icons.arrow_back),
          ),
        ),
        Positioned(
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: const Icon(Icons.arrow_forward),
          ),
        ),
        Positioned(
          bottom: 16,
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: const Text(
              'SYMBOLIC SPECIES ADOPTIONS ›',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
