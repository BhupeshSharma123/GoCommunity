import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/dashboardSscreen/dashboard_screen.dart';
import 'package:my_app/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Complete Your Profile',
                    style: GoogleFonts.roboto(
                      color: ColorsPage.signupTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Enter your personal information',
                    style: GoogleFonts.roboto(
                      color: ColorsPage.logo_text_color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/png/profile.png'),
                  radius: 30,
                ),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Expanded(
                //       child: Container(
                //         margin: const EdgeInsets.symmetric(
                //           vertical: 20,
                //         ),
                //         child:  MyTextField_1(
                //           labelText: 'First Name', controller: null, onChanged: (value) {  },
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Container(
                //           margin: const EdgeInsets.symmetric(
                //             vertical: 20,
                //           ),
                //           child: MyTextField_1(labelText: 'Last Name', controller: null, onChanged: (value) {  },)),
                //     ),
                //   ],
                // ),
                // Container(
                //     margin: const EdgeInsets.symmetric(vertical: 20),
                //     child:  MyTextField_1(labelText: 'House Number', controller: null, onChanged: (value) {  },)),
                // Container(
                //     margin: const EdgeInsets.symmetric(vertical: 20),
                //     child:  MyTextField_1(labelText: 'Email', controller: null, onChanged: (value) {  },)),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(320, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBackgroundColor: ColorsPage.buttonColorBlue,
                    backgroundColor: ColorsPage.buttonColorBlue,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ));
                  },
                  child: Text(
                    'Submit',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
