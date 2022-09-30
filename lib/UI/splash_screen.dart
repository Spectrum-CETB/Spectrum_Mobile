import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:async/async.dart';
import 'package:spectrum/UI/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => OnboardingScreen()));
    });
    return Scaffold(
      body: Center(
        child: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.38),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/Svg/spectrumsvg.svg',
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                    'SPECTRUM',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    //speed: const Duration(milliseconds: 2000),
                  ),
                ],
                //totalRepeatCount: 4,
                //pause: const Duration(milliseconds: 1000),
                //displayFullTextOnTap: true,
                //stopPauseOnTap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
