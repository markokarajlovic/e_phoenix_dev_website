import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreLinks extends StatelessWidget {
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? windowsLink;
  final String? macOSLink;
  final String? linuxLink;

  const StoreLinks({
    super.key,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.windowsLink,
    this.linuxLink,
    this.macOSLink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Links:',
          style: linkStyle.copyWith(decoration: TextDecoration.none),
        ),
        const SizedBox(width: 4),
        if (webLink != null)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse(webLink!),
                  webOnlyWindowName: '_blank',
                );
              },
              child: Image.asset('assets/icons/website.png'),
            ),
          ),
        if (webLink != null) const SizedBox(width: 4),
        if (iosLink != null)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse(iosLink!),
                  webOnlyWindowName: '_blank',
                );
              },
              child: Image.asset('assets/icons/app_store.png'),
            ),
          ),
        if (iosLink != null) const SizedBox(width: 4),
        if (androidLink != null)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse(androidLink!),
                  webOnlyWindowName: '_blank',
                );
              },
              child: Image.asset('assets/icons/play_store.png'),
            ),
          ),
      ],
    );
  }
}
