import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/w_menu/section_heading.dart';
import 'package:evaluacion_2/widgets/w_menu/list_tile_item.dart';

class OurWorkExpansionTile extends StatelessWidget {
  const OurWorkExpansionTile({super.key});

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
          'OUR WORK',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        children: const [
          ListTileItem(text: 'Learn More About Our Impact >'),
          SectionHeading(heading: 'What we care about'),
          ListTileItem(text: 'People'),
          ListTileItem(text: 'Places'),
          ListTileItem(text: 'Species'),
          ListTileItem(text: 'Climate crisis'),
          ListTileItem(text: 'Sustainability'),
          SectionHeading(heading: 'How we work'),
          ListTileItem(text: 'Public policy'),
          ListTileItem(text: 'Science'),
          ListTileItem(text: 'Business'),
          ListTileItem(text: 'Wildlife conservation'),
        ],
      ),
    );
  }
}
