import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/w_menu/search_bar_widget.dart';
import 'package:evaluacion_2/widgets/btn_donate.dart';
import 'package:evaluacion_2/widgets/btn_adopt.dart';
import 'package:evaluacion_2/widgets/w_menu/our_work_expansion_tile.dart';
import 'package:evaluacion_2/widgets/w_menu/get_involved_expansion_tile.dart';
import 'package:evaluacion_2/widgets/w_menu/about_us_expansion_tile.dart';

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
        onPressed: () {
          // Acción del FAB (por ejemplo, abrir chat)
        },
        backgroundColor: Colors.orange[800],
        child: const Icon(Icons.chat),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            // Widget Search Bar
            SearchBarWidget(),

            // Fila con botones Adopt y Donate
            Row(
              children: [
                Expanded(child: BtnAdopt()),
                SizedBox(width: 8),
                Expanded(child: BtnDonate()),
              ],
            ),

            SizedBox(height: 24),

            // Sección OUR WORK
            OurWorkExpansionTile(),
            SizedBox(height: 8),

            // Sección GET INVOLVED
            GetInvolvedExpansionTile(),
            SizedBox(height: 8),

            // Sección ABOUT US
            AboutUsExpansionTile(),
          ],
        ),
      ),
    );
  }
}
