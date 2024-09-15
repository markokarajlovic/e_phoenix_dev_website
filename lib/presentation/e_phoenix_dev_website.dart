import 'package:e_phoenix_dev_website/consts/color_consts.dart';
import 'package:e_phoenix_dev_website/consts/text_consts.dart';
import 'package:e_phoenix_dev_website/presentation/contact/contact_form.dart';
import 'package:e_phoenix_dev_website/presentation/footer/footer.dart';
import 'package:e_phoenix_dev_website/presentation/portfolio/portfolio.dart';
import 'package:e_phoenix_dev_website/presentation/what_i_do/what_i_do.dart';
import 'package:flutter/material.dart';

import 'about_me/about_me.dart';

class EPhoenixDevWebsite extends StatelessWidget {
  const EPhoenixDevWebsite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasMobileFrame = MediaQuery.sizeOf(context).width > 600;
    return Scaffold(
      backgroundColor: kScreenBackground,
      appBar: AppBar(
        backgroundColor: kAppbarBackground,
        foregroundColor: kWhite,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            'assets/icons/logo.png',
            color: kRed,
          ),
        ),
        title:  Text(
          'ePhoenix Dev',
          style: appbarTitle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 24),
                AboutMe(hasMobileFrame: hasMobileFrame),
                const SizedBox(height: 16),
                WhatIDo(hasMobileFrame: hasMobileFrame),
                Portfolio(hasMobileFrame: hasMobileFrame),
                ContactForm(hasMobileFrame: hasMobileFrame),
                Footer(hasMobileFrame: hasMobileFrame),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
