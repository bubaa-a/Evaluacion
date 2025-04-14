import 'package:flutter/material.dart';

class W05AdoptScreen extends StatelessWidget {
  const W05AdoptScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Looking for a gift that protects wildlife and the environment? You’ve come to the right place! When you donate through WWFGifts, you help create a safer world for wildlife, protect amazing places, and build a future where people live in harmony with nature. Your donation will support WWFs conservation work around the globe and makes you a WWF member.',
          style: TextStyle(fontSize: 16,),
        ),
      ),
    );
  }
}
