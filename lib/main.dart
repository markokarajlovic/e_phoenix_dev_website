import 'package:device_frame/device_frame.dart';
import 'package:e_phoenix_dev_website/presentation/e_phoenix_dev_website.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final bool hasMobileFrame = MediaQuery.sizeOf(context).width > 600;
    return MaterialApp(
        title: 'ePhoenix dev',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900),
          useMaterial3: true,
        ),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900),
          useMaterial3: true,
        ),
        home: hasMobileFrame
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.blueGrey,
                      Colors.blueGrey.withOpacity(0.5),
                      Colors.blueGrey.withOpacity(0.3),
                    ],
                  ),
                ),
                child: DeviceFrame(
                  device: Devices.ios.iPhone13ProMax,
                  isFrameVisible: true,
                  orientation: Orientation.portrait,
                  screen: EPhoenixDevWebsite(hasMobileFrame: hasMobileFrame),
                ),
              )
            : EPhoenixDevWebsite(hasMobileFrame: hasMobileFrame));
  }
}
