import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  final String text;
  const ListTileItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 32.0),
      title: Text(text, style: const TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }
}
