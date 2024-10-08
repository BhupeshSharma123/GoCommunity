import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class ListDescription extends StatelessWidget {
  final String listDescription;
  final String moreText;
  const ListDescription({
    super.key,
    required this.listDescription,
    required this.moreText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listDescription,
            style: GoogleFonts.roboto(
                color: ColorsPage.signupTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          Text(
            moreText,
            style: GoogleFonts.roboto(
              color: ColorsPage.buttonColorBlue,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
