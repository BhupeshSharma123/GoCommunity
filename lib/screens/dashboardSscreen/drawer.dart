import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/model/listdata.dart';
import 'package:my_app/screens/HomeScreens/welcome_screen.dart';
import 'package:my_app/utils/colors.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<DrawerList> drawerList = [
    DrawerList(imagePath: 'assets/png/home.png', text: 'Home'),
    DrawerList(imagePath: 'assets/png/chat2.png', text: 'Chat'),
    DrawerList(imagePath: 'assets/png/docs.png', text: 'Documents'),
    // DrawerList(imagePath: 'assets/png/calender1.png', text: 'Events'),
    // DrawerList(imagePath: 'assets/png/Reserve.png', text: 'Reserve'),
    DrawerList(imagePath: 'assets/png/group(1).png', text: 'Member'),
    DrawerList(imagePath: 'assets/png/sale.png', text: 'Sales'),

    DrawerList(
        imagePath: 'assets/png/recommendation.png', text: 'Recommendation'),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset('assets/png/Vector1.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Settings',
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff35424A)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Color(0xffF6F4F5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/png/profile.png',
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ken Burns',
                            style: GoogleFonts.roboto(
                                color: ColorsPage.signupTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'HOA Member',
                            style: GoogleFonts.roboto(
                                color: Color(0xff989EB1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: IconButton(
                        onPressed: null,
                        icon: Image.asset('assets/png/greater.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          drawerList[index].imagePath,
                          height: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          drawerList[index].text,
                          style: GoogleFonts.roboto(
                              color: ColorsPage.signupTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
