import 'package:e_phoenix_dev_website/consts/color_consts.dart';
import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final bool hasMobileFrame;

  const Footer({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: kCardBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo.png',
                color: Colors.red,
                width: 32,
                height: 32,
              ),
              const SizedBox(width: 8),
              Text(
                'ePhoenix Dev',
                style: title2,
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            'CONTACT',
            style: footerTitle,
          ),
          const SizedBox(height: 4),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'marko.karajlovic@gmail.com',
                );
                launchUrl(
                  emailLaunchUri,
                );
              },
              child: Text(
                'marko.karajlovic@gmail.com',
                style: footerBody,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            'ADDRESS',
            style: footerTitle,
          ),
          const SizedBox(height: 4),
          Text(
            'Novi Sad, Serbia',
            style: footerBody,
          ),
          const SizedBox(height: 18),
          Text(
            'SOCIAL',
            style: footerTitle,
          ),
          const SizedBox(height: 4),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse('https://www.linkedin.com/in/marko-karajlovic-4992917b/'),
                  webOnlyWindowName: '_blank',
                );
              },
              child: Text(
                'LinkedIn',
                style: footerBodyLink,
              ),
            ),
          ),
          const SizedBox(height: 4),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse('https://medium.com/@phoenixinerfire'),
                  webOnlyWindowName: '_blank',
                );
              },
              child: Text(
                'Medium',
                style: footerBodyLink,
              ),
            ),
          ),
          const SizedBox(height: 18),
          // const Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     'Partnership with: ',
          //     style: TextStyle(
          //       fontSize: 20,
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Row(
          //     children: [
          //       MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: GestureDetector(
          //           onTap: () {
          //             launchUrl(
          //               Uri.parse('https://www.designrush.com'),
          //               webOnlyWindowName: '_blank',
          //             );
          //           },
          //           child: const Text(
          //             'https://www.designrush.com',
          //             style: TextStyle(
          //               fontSize: 20,
          //               decoration: TextDecoration.underline,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
          Text(
            '© 2024 by ePhoenix Dev',
            style: footerRightsReserved,
          ),
        ],
      ),
    );
  }
}
