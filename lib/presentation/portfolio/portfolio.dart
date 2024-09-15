import 'package:e_phoenix_dev_website/consts/color_consts.dart';
import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:e_phoenix_dev_website/presentation/portfolio/portfolio_item.dart';
import 'package:e_phoenix_dev_website/presentation/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  final bool hasMobileFrame;

  const Portfolio({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hasMobileFrame ? 600 : null,
      child: CustomCard(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Apps I worked on',
                style: title1,
              ),
            ),
            const SizedBox(height: 16),
            const PortfolioItem(
              name: 'Hiway',
              description: 'Discover Hiway, the mobile application for tech freelancers!',
              logo: 'assets/portfolio/hiway.webp',
              link: 'https://play.google.com/store/apps/details?id=fr.hiway&pcampaignid=web_share',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'PBS Live',
              description: 'Communication tool for internal communication between users.',
              logo: 'assets/portfolio/pbs.webp',
              link: 'https://play.google.com/store/apps/details?id=com.teampbs.PBSLive&pcampaignid=web_share',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Tabski KDS',
              description: 'Receive digital orders seamlessly across online and on-premise channels',
              logo: 'assets/portfolio/tabski.webp',
              link: 'https://play.google.com/store/apps/details?id=com.tabski.orders.live&hl=bs',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'rnv Start.Info',
              description: 'All the information about local public transport.',
              logo: 'assets/portfolio/rnv.webp',
              link: 'https://play.google.com/store/apps/details?id=de.taf.rnv&pcampaignid=web_share',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'CURE',
              description: 'The CURE practice manager for your practice finances',
              logo: 'assets/portfolio/cure.png',
              link: 'https://cure.finance/',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Kuechen Fragen',
              description: 'We strive to provide you information from the German kitchen market.',
              logo: 'assets/portfolio/kitchen.png',
              link: 'http://www.kuechenfragen.de/',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Seamless',
              description: 'Pay for public transport & city services with your phone.',
              logo: 'assets/portfolio/seamless.png',
              link: 'https://seamless-seamless-transportation-administrator.en.aptoide.com/app',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Schaeffler OPTIME',
              description: 'All the information about local public transport.',
              logo: 'assets/portfolio/schaeffler.webp',
              link: 'https://play.google.com/store/apps/details?id=com.schaeffler.cm2020.android&pcampaignid=web_share',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Heylol',
              description: 'Authentic connections and fun entertainment',
              logo: 'assets/portfolio/heylol.webp',
              link: 'https://play.google.com/store/apps/details?id=com.heylol&hl=bs',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Sky Radio',
              description: 'You can listen to the best music non-stop everywhere and as a Sky member',
              logo: 'assets/portfolio/sky_radio.webp',
              link: 'https://play.google.com/store/apps/details?id=nl.skyradiogroup.skyradio',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Radio Veronica',
              description: 'Stream your favorite station non-stop with the best pop and rock hits.',
              logo: 'assets/portfolio/veronica_radio.webp',
              link: 'https://play.google.com/store/apps/details?id=nl.skyradiogroup.radioveronica',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Radio 10',
              description: 'With the Radio 10 app, you can listen to your favorite radio station anytime and anywhere.',
              logo: 'assets/portfolio/radio_10.webp',
              link: 'https://play.google.com/store/apps/details?id=com.nakko.android.radio10gold',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'Radio 538',
              description: 'Listen to Radio 538, watch live, app the DJs and check out the best fragments!',
              logo: 'assets/portfolio/538_radio.webp',
              link: 'https://play.google.com/store/apps/details?id=com.nakko.android.radio538',
            ),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
            const PortfolioItem(
              name: 'OK',
              description: 'The OK app makes shopping easier and helps you save on shopping',
              logo: 'assets/portfolio/ok_app.webp',
              link: 'https://play.google.com/store/apps/details?id=com.okit.app.android.live&pcampaignid=web_share',
            ),
          ],
        ),
      ),
    );
  }
}
