import 'package:flutter/material.dart';

class W01AdoptScreen extends StatelessWidget {
  const W01AdoptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: const Text.rich(
        TextSpan(
          text: 'Give to World Wildlife Fund and choose an item. For you: ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
          children: [
            TextSpan(
              text: 'hummingbird collection',
              style: TextStyle(
                color: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationColor: Colors.yellow,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
