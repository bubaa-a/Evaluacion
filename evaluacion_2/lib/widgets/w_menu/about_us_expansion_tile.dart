import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/w_menu/list_tile_item.dart';

class AboutUsExpansionTile extends StatelessWidget {
  const AboutUsExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(4),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        title: const Text(
          'ABOUT US',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        children: const [
          ListTileItem(text: 'Contact >'),
          ListTileItem(text: 'Mission and values'),
          ListTileItem(text: 'Who we are'),
          ListTileItem(text: 'History'),
          ListTileItem(text: 'Leadership'),
          ListTileItem(text: 'Experts'),
          ListTileItem(text: 'Stories and updates'),
          ListTileItem(text: 'World Wildlife Magazine'),
          ListTileItem(text: 'Newsroom'),
          ListTileItem(text: 'Financials'),
          ListTileItem(text: 'Careers'),
        ],
      ),
    );
  }
}
