import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spectrum/UI/intro_screen_1.dart';
import 'package:spectrum/UI/intro_screen_2.dart';
import 'package:spectrum/UI/intro_screen_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.7),
          child: SmoothPageIndicator(
            controller: _controller,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.black,
              dotHeight: 10,
              dotWidth: 10,
            ),
            count: 3,
          ),
        ),
        onLastPage
            ? Container(
                alignment: const Alignment(0, 0.95),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.24,
                          vertical: MediaQuery.of(context).size.height * 0.015),
                      color: Colors.white,
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.035,
                          fontFamily: 'Proxima Nova',
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                alignment: Alignment(0, 0.95),
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.087),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => _controller.jumpToPage(2),
                      child: Text(
                        "Skip",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                        //textAlign: TextAlign.center,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      shape: const CircleBorder(),
                      onPressed: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    ));
  }
}
