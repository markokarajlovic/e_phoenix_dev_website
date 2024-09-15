import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioItem extends StatelessWidget {
  final String name;
  final String description;
  final String? logo;
  final String link;
  final String? logoUrl;

  const PortfolioItem({
    super.key,
    required this.name,
    required this.description,
    this.logo,
    this.logoUrl,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (logo != null) Image.asset(logo!, width: 150, height: 150, fit: BoxFit.contain),
            if (logoUrl != null) Image.network(logoUrl!, width: 150, height: 150, fit: BoxFit.contain),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: title2,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.left,
                    style: body2,
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                            Uri.parse(link),
                            webOnlyWindowName: '_blank',
                          );
                        },
                        child: Text(
                          'Link to app',
                          style: linkStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
