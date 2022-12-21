import 'package:blog_application/gen/assets.gen.dart';
import 'package:blog_application/screens/main_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then((value) {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          builder: (context) => const MainScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Assets.img.background.splash.image(
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Assets.img.icons.logo.svg(
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
