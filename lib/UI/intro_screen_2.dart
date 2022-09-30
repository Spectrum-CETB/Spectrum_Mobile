import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFDE9F),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SvgPicture.asset(
            'assets/Svg/Cool robot-cuate.svg',
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            "Innovated",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.045,
              fontFamily: 'Proxima Nova',
              fontWeight: FontWeight.w700,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: Text(
              "Creativity is thinking up new things. Innovation is doing new things.",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
