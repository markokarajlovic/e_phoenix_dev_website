import 'package:e_phoenix_dev_website/presentation/contact/contact_form.dart';
import 'package:e_phoenix_dev_website/presentation/footer/footer.dart';
import 'package:e_phoenix_dev_website/presentation/portfolio/portfolio.dart';
import 'package:e_phoenix_dev_website/presentation/what_i_do/what_i_do.dart';
import 'package:flutter/material.dart';

import 'about_me/about_me.dart';

class EPhoenixDevWebsite extends StatelessWidget {
  final bool hasMobileFrame;

  const EPhoenixDevWebsite({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hasMobileFrame ? Colors.white10 : Colors.black54,
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
          child: Column(
            children: [
              const AboutMe(),
              const WhatIDo(),
              const Portfolio(),
              ContactForm(hasMobileFrame: hasMobileFrame),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
