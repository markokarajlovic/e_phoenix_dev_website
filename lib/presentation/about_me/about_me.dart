import 'package:e_phoenix_dev_website/consts/color_consts.dart';
import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  final bool hasMobileFrame;

  const AboutMe({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hasMobileFrame ? 600 : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',
                style: title1,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                    width: 150,
                    height: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipRect(
                      child: Image.asset('assets/portfolio/me.jpg'),
                    )),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'I am highly experienced software developer with a proven track record in mobile app creation.',
                    textAlign: TextAlign.left,
                    style: body1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
             Text(
              'I have deep knowledge of mobile development tools and frameworks, and a passion for building innovative and user-friendly applications.',
              textAlign: TextAlign.left,
              style: body1,
            ),
            const SizedBox(height: 16),
            const Divider(indent: 16, endIndent: 16, thickness: 1, color: kDividerColor),
          ],
        ),
      ),
    );
  }
}
