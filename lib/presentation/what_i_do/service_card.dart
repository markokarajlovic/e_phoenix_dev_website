import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final double size;
  final String text;
  final String icon;

  const ServiceCard({
    super.key,
    required this.size,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: size,
        height: size,
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(icon),
            )),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
