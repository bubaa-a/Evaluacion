import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // logo y menu amburgesa
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image.asset('assets/logo2.png', height: 80),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: IconButton(
                          icon: Icon(Icons.menu, color: Colors.black),
                          iconSize: 50,
                          onPressed: () {
                            // Acción para abrir screen de menu
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // DONATE y ADOPT
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.red[700],
                    alignment: Alignment.center,
                    child: Text(
                      'DONATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.orange[700],
                    alignment: Alignment.center,
                    child: Text(
                      'ADOPT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // imagen elefantes
            Image.asset(
              'assets/elephant.jpg',
              height: 370,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            //texto
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    Text(
                      'Elephants navigate a\nchanging landscape',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 25),
                    Text(
                      'What scientists are learning from\ntracking the animals in',
                      style: TextStyle(fontSize: 22, color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
