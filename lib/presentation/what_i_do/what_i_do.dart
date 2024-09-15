import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:e_phoenix_dev_website/presentation/what_i_do/service_card.dart';
import 'package:e_phoenix_dev_website/presentation/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class WhatIDo extends StatelessWidget {
  final bool hasMobileFrame;

  const WhatIDo({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hasMobileFrame ? 600 : null,
      child: CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Service',
                style: title1,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              ' • Flutter for native-looking mobile apps',
              style: body1,
            ),
            Text(
              ' • Firebase for seamless backend integration',
              style: body1,
            ),
            Text(
              ' • React for captivating web experiences',
              style: body1,
            ),
            Text(
              ' • Node.js for scalable server-side logic',
              style: body1,
            ),
            Text(
              ' • .NET for robust enterprise applications',
              style: body1,
            ),
            const SizedBox(height: 32),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ServiceCard(
                  text: 'Mobile apps for Android and iOS',
                  icon: 'assets/icons/mobile.png',
                ),
                SizedBox(width: 8),
                ServiceCard(
                  text: 'Web applications',
                  icon: 'assets/icons/web.png',
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                ServiceCard(
                  text: 'Desktop apps for Windows, macOS and Linux',
                  icon: 'assets/icons/desktop.png',
                ),
                SizedBox(width: 8),
                ServiceCard(
                  text: 'Backend Service to support all apps',
                  icon: 'assets/icons/backend.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
