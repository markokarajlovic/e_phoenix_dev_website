import 'package:e_phoenix_dev_website/consts/color_consts.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const CustomCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(16),
      padding: padding ?? const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        color: kCardBackground,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: child,
    );
  }
}
