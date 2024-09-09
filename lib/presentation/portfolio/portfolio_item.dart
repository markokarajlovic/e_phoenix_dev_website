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
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(12))),
        margin: const EdgeInsets.only(bottom: 8),
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
                      style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 18),
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
                          child: const Text(
                            'Link to app',
                            style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                            ),
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
      ),
    );
  }
}
