import 'package:flutter/material.dart';
import 'package:selicing_ui/halaman/page_01.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Lottie.asset("splscreen.json"),
            ),
          ],
        ),
        nextScreen: Page01(),
        splashIconSize: 100,
        backgroundColor: Colors.white,
      ), 
    );
  }
}
