import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable, camel_case_types
class MyTextField_1 extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  final String labelText;
  MyTextField_1({
    super.key,
    // required this.controller,
    required this.labelText,
    required TextEditingController controller,
    required Null Function(dynamic value) onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          labelStyle: GoogleFonts.roboto(
            color: const Color(0xff989EB1),
          ),
          label: Text(labelText),
        ),
      ),
    );
  }
}
