import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearByScreenTabs extends StatelessWidget {
  final Function() onPress;
  final String buttonText;
  const NearByScreenTabs({
    super.key,
    required this.onPress,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        minimumSize: const Size(80, 30),
        fixedSize: const Size(80, 30),
        disabledBackgroundColor: Colors.black,
        backgroundColor: const Color(0xff222222),
      ),
      onPressed: onPress,
      child: Text(
        buttonText,
        style: GoogleFonts.roboto(
            color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),
      ),
    );
  }
}
