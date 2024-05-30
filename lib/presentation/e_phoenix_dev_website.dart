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
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            'assets/icons/logo.png',
            color: Colors.red,
          ),
        ),
        title: const Text(
          'ePhoenix Dev',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: hasMobileFrame ? 600 : null,
              child: Column(
                children: [
                  AboutMe(hasMobileFrame: hasMobileFrame),
                  WhatIDo(hasMobileFrame: hasMobileFrame),
                  Portfolio(hasMobileFrame: hasMobileFrame),
                  ContactForm(hasMobileFrame: hasMobileFrame),
                  Footer(hasMobileFrame: hasMobileFrame),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
