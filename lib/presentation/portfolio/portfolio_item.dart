import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:e_phoenix_dev_website/presentation/portfolio/store_links.dart';
import 'package:flutter/material.dart';

class PortfolioItem extends StatelessWidget {
  final String name;
  final String description;
  final String? logo;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? windowsLink;
  final String? macOSLink;
  final String? linuxLink;

  const PortfolioItem({
    super.key,
    required this.name,
    required this.description,
    this.logo,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.windowsLink,
    this.linuxLink,
    this.macOSLink,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (logo != null) Image.asset(logo!, width: 100, height: 100, fit: BoxFit.contain),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            StoreLinks(
              androidLink: androidLink,
              iosLink: iosLink,
              webLink: webLink,
              windowsLink: windowsLink,
              macOSLink: macOSLink,
              linuxLink: linuxLink,
            ),
          ],
        ),
      ),
    );
  }
}
