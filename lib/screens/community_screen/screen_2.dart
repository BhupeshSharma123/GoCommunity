import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/community_screen/list_data.dart';

import 'package:my_app/screens/dashboardSscreen/dashboardComponents/list_heading.dart';
import 'package:my_app/screens/dashboardSscreen/dashboard_methods.dart';
import 'package:my_app/screens/dashboardSscreen/dashscreen_lists.dart';

import 'package:my_app/screens/nearbyScreen/screenComponents/screen_tabs.dart';
import 'package:my_app/utils/colors.dart';

class CommunityScreen2 extends StatefulWidget {
  const CommunityScreen2({super.key});

  @override
  State<CommunityScreen2> createState() => _CommunityScreen2State();
}

class _CommunityScreen2State extends State<CommunityScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar('Community'),
      // bottomNavigationBar: ButtomBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(width: 0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NearByScreenTabs(
                    onPress: () {},
                    buttonText: 'Stores',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  NearByScreenTabs(onPress: () {}, buttonText: 'Sales'),
                  const SizedBox(
                    width: 10,
                  ),
                  NearByScreenTabs(onPress: () {}, buttonText: 'Offers'),
                  const SizedBox(
                    width: 10,
                  ),
                  NearByScreenTabs(onPress: () {}, buttonText: 'Offers'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              // color: Colors.amberAccent,
              child: Column(
                children: [
                  ListDescription(
                      listDescription: 'Your Reservation', moreText: ''),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: resvListData.length,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: resvListData[index].color),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child:
                                    Image.asset('assets/png/MaskGroup(7).png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      resvListData[index].rText,
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: ColorsPage.signupTextColor),
                                    ),
                                    Text(
                                      eventListData[index].eName,
                                      style: GoogleFonts.roboto(
                                          color: ColorsPage.timeColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/png/clock.png',
                                          height: 9,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          eventListData[index].eDate,
                                          style: GoogleFonts.roboto(
                                              color: ColorsPage.timeColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      resvListData[index].rMsg,
                                      style: GoogleFonts.roboto(
                                        color: resvListData[index].color,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListDescription(
                      listDescription: 'Community Resources', moreText: ''),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: resvListData.length,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                      'assets/png/MaskGroup(8).png')),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      resorceListData[index].name,
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: ColorsPage.signupTextColor),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/png/clock.png',
                                          height: 9,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          resorceListData[index].time,
                                          style: GoogleFonts.roboto(
                                              color: ColorsPage.timeColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/png/user3.png',
                                          height: 9,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          resorceListData[index].people,
                                          style: GoogleFonts.roboto(
                                              color: ColorsPage.timeColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
