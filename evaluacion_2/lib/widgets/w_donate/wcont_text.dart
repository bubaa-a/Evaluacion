import 'package:flutter/material.dart';

class WcontText extends StatelessWidget {
  const WcontText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '© naturepl.com/Denis-Huot/WWF',
            style: TextStyle(fontFamily: 'arial', fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Donate to WWF',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Text(
                '"WWF s spring membership drive is under way!\n'
                'We re hoping to find 1,800 people who will\n'
                'protect this beautiful planet as members. Will you\n'
                'help us reach our goal by Earth Day (April 22)?"\n',
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text:
                          'As a WWF donor and member, you\'ll be part of\n'
                          'an amazing community making every day\n'
                          'Earth Day.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          'Your\'ll safeguard endangered species\n'
                          'and the environment and build a better future for\n'
                          'nature.\n',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
