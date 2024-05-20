import 'package:e_phoenix_dev_website/presentation/what_i_do/service_card.dart';
import 'package:flutter/material.dart';

class WhatIDo extends StatelessWidget {
  const WhatIDo({super.key});

  @override
  Widget build(BuildContext context) {
    final cardSize = (MediaQuery.sizeOf(context).width - 8 - 32 - 16) / 2;
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Service',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' • Flutter for native-looking mobile apps',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    ' • Firebase for seamless backend integration',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    ' • React for captivating web experiences',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    ' • Node.js for scalable server-side logic',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),Text(
                    ' • .NET for robust enterprise applications',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              ServiceCard(
                size: cardSize,
                text: 'Mobile apps for Android and iOS',
                icon: 'assets/icons/mobile.png',
              ),
              const SizedBox(width: 8),
              ServiceCard(
                size: cardSize,
                text: 'Web applications',
                icon: 'assets/icons/web.png',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              ServiceCard(
                size: cardSize,
                text: 'Desktop apps for Windows, macOS and Linux',
                icon: 'assets/icons/desktop.png',
              ),
              const SizedBox(width: 8),
              ServiceCard(
                size: cardSize,
                text: 'Backed Service to support all apps',
                icon: 'assets/icons/backend.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
