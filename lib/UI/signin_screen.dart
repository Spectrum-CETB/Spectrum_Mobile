import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spectrum/UI/signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.072,
          ),
          SvgPicture.asset(
            'assets/Svg/roboarm.svg',
            width: MediaQuery.of(context).size.width * 0.75,
          ),
          Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.045,
              fontFamily: 'Proxima Nova',
              fontWeight: FontWeight.w700,
              color: const Color(0xFF263238),
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.033,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.062,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              border: Border.all(
                color: const Color(0xFFFFFFFF),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF787C7D),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email address",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF787C7D),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0142,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.062,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              border: Border.all(
                color: const Color(0xFFFFFFFF),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: TextFormField(
                obscureText: isObscured,
                keyboardType: TextInputType.visiblePassword,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF787C7D),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your password",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF787C7D),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscured
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: const Color(0xFF787C7D),
                    ),
                    onPressed: () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0142,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.0871),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "forgot password?",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF787C7D),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0284,
          ),
          MaterialButton(
            onPressed: () {},
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.343,
                vertical: MediaQuery.of(context).size.height * 0.015),
            color: Color(0xFFFF725E),
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Text(
              'Sign in',
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.w600,
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0142,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF747474),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignupScreen()));
                  },
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF747474),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Need any help? ",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF747474),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Contact us",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF747474),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0142,
          ),
        ],
      ),
    );
  }
}
