import 'package:e_phoenix_dev_website/presentation/portfolio/portfolio_item.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  final bool hasMobileFrame;

  const Portfolio({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: hasMobileFrame ? const BorderRadius.all(Radius.circular(8)) : null,
      ),
      child: const Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Apps I worked on',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 8),
          PortfolioItem(
            name: 'Hiway',
            description: 'Discover Hiway, the mobile application for tech freelancers!',
            logo: 'assets/portfolio/hiway.webp',
            link: 'https://play.google.com/store/apps/details?id=fr.hiway&pcampaignid=web_share',
          ),
          PortfolioItem(
            name: 'PBS Live',
            description: 'Communication tool for internal communication between users.',
            logo: 'assets/portfolio/pbs.webp',
            link: 'https://play.google.com/store/apps/details?id=com.teampbs.PBSLive&pcampaignid=web_share',
          ),
          PortfolioItem(
            name: 'rnv Start.Info',
            description: 'All the information about local public transport.',
            logo: 'assets/portfolio/rnv.webp',
            link: 'https://play.google.com/store/apps/details?id=de.taf.rnv&pcampaignid=web_share',
          ),
          PortfolioItem(
            name: 'Seamless',
            description: 'Pay for public transport & city services with your phone.',
            logo: 'assets/portfolio/seamless.png',
            link: 'https://seamless-seamless-transportation-administrator.en.aptoide.com/app',
          ),
          PortfolioItem(
            name: 'Schaeffler OPTIME',
            description: 'All the information about local public transport.',
            logo: 'assets/portfolio/schaeffler.webp',
            link: 'https://play.google.com/store/apps/details?id=com.schaeffler.cm2020.android&pcampaignid=web_share',
          ),
        ],
      ),
    );
  }
}
