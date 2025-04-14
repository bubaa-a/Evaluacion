import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'WORLD WILDLIFE FUND',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[800],
        child: const Icon(Icons.chat),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            SearchBarWidget(),

            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: BtnDonate()),
                SizedBox(width: 90),
                Expanded(child: BtnAdopt()),
              ],
            ),

            SizedBox(height: 24),

            OurWorkExpansionTile(),
            SizedBox(height: 8),

            GetInvolvedExpansionTile(),
            SizedBox(height: 8),

            AboutUsExpansionTile(),
          ],
        ),
      ),
    );
  }
}
