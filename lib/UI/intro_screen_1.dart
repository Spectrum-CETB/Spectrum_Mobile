import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFED6D6),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SvgPicture.asset(
            'assets/Svg/Superhero-cuate.svg',
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            "Elevated",
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
              "You can’t solve a problem on the same level that it was created. You have to rise above it to the next level.",
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
