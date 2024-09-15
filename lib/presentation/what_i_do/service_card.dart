import 'package:e_phoenix_dev_website/consts/color_consts.dart';
import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String text;
  final String icon;

  const ServiceCard({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              icon,
              width: 100,
              height: 100,
              color: kWhite,
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: body2,
          ),
        ],
      ),
    );
  }
}
