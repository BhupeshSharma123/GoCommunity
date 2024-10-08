import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/colors.dart';

class ReserveScreen extends StatefulWidget {
  const ReserveScreen({super.key});

  @override
  State<ReserveScreen> createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/png/MaskGroup(9).png',
                // fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 40,
                child: Image.asset('assets/png/Vector.png'),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 210, top: 20),
                  child: Text(
                    'Swimming Pool',
                    style: GoogleFonts.roboto(
                        color: ColorsPage.signupTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/png/clock.png',
                      height: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '9:00 AM - 11:00 AM',
                      style: GoogleFonts.roboto(
                        color: Color(0xff989EB1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/png/user3.png',
                      height: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '20/30 People',
                      style: GoogleFonts.roboto(
                        color: Color(0xff989EB1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Summary',
                  style: GoogleFonts.roboto(
                      color: ColorsPage.signupTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                      style: GoogleFonts.roboto(color: ColorsPage.timeColor),
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard Read more'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
