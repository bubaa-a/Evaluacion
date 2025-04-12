import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/w_menu/list_tile_item.dart';

class GetInvolvedExpansionTile extends StatelessWidget {
  const GetInvolvedExpansionTile({super.key});

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
          'GET INVOLVED',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        children: const [
          ListTileItem(text: 'See All Ways To Get Involved >'),
          ListTileItem(text: 'Take action'),
          ListTileItem(text: 'Fundraise'),
          ListTileItem(text: 'Give'),
          ListTileItem(text: 'Send ecards'),
          ListTileItem(text: 'Get email'),
          ListTileItem(text: 'Educational resources'),
          ListTileItem(text: 'Leave a legacy gift'),
          ListTileItem(text: 'Travel with us'),
        ],
      ),
    );
  }
}
