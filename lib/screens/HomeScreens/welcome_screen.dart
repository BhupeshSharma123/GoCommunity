import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/HomeScreens/signin_screen.dart';
import 'package:my_app/screens/HomeScreens/submit_screen.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/utils/text_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextStyle textFont = GoogleFonts.roboto();
  TextPage textPage = TextPage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 67),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/Frame.svg'),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Image(image: AssetImage('assets/png/group.png')),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  textPage.welcomeText,
                  style: GoogleFonts.roboto(color: ColorsPage.logo_text_color),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(320, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    disabledBackgroundColor: const Color(0xffEBEBEB),
                    backgroundColor: const Color(0xffEBEBEB),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ));
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.roboto(
                      color: const Color(0xff35424A),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(320, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBackgroundColor: const Color(0xff374CFF),
                    backgroundColor: const Color(0xff374CFF),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SubmitScreen(),
                        ));
                  },
                  child: Text(
                    'Join GoCommunity',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
