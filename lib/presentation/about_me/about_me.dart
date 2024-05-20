import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: Colors.white10,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'About Me',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
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
              const Expanded(
                child: Text(
                  'I am highly experienced software developer with a proven track record in mobile app creation.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            'I have deep knowledge of mobile development tools and frameworks, and a passion for building innovative and user-friendly applications.',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 21, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
