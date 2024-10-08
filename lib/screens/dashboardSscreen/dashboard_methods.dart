import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

AppBar appBar(String appBarHeading) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    title: Text(
      appBarHeading,
      style: GoogleFonts.righteous(
          color: ColorsPage.signupTextColor,
          fontSize: 24,
          fontWeight: FontWeight.w400),
    ),
    actions: [
      SizedBox(
        height: 24,
        width: 24,
        child: InkWell(child: Image.asset('assets/png/Search.png')),
      ),
      const SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 24,
          width: 24,
          child: Image.asset('assets/png/bell.png'),
        ),
      ),
    ],
  );
}

Container columnHeading(String heading) {
  return Container(
    padding: const EdgeInsets.only(top: 30),
    child: Text(
      heading,
      style: GoogleFonts.roboto(
          color: ColorsPage.signupTextColor,
          fontWeight: FontWeight.w500,
          fontSize: 14),
    ),
  );
}
