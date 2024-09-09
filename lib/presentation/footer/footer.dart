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
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: hasMobileFrame ? const BorderRadius.all(Radius.circular(8)) : null,
      ),
      child: Column(
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
              const Text(
                'ePhoenix Dev',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'CONTACT',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4),
          Align(
            alignment: Alignment.centerLeft,
            child: MouseRegion(
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
                child: const Text(
                  'marko.karajlovic@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'ADDRESS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Novi Sad, Serbia',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 18),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'SOCIAL',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4),
          Align(
            alignment: Alignment.centerLeft,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchUrl(
                    Uri.parse('https://www.linkedin.com/in/marko-karajlovic-4992917b/'),
                    webOnlyWindowName: '_blank',
                  );
                },
                child: const Text(
                  'LinkedIn',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Align(
            alignment: Alignment.centerLeft,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchUrl(
                    Uri.parse('https://medium.com/@phoenixinerfire'),
                    webOnlyWindowName: '_blank',
                  );
                },
                child: const Text(
                  'Medium',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
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
          const Divider(
            indent: 12,
            endIndent: 12,
            thickness: 2,
          ),
          const Text(
            '© 2024 by ePhoenix Dev',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
