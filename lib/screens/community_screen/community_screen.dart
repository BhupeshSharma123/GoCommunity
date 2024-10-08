import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/model/screen_model.dart';
// import 'package:my_app/screens/dashboardSscreen/dashboardComponents/event_list.dart';
import 'package:my_app/screens/dashboardSscreen/dashboardComponents/list_heading.dart';

import 'package:my_app/screens/dashboardSscreen/dashboard_methods.dart';
import 'package:my_app/screens/dashboardSscreen/dashscreen_lists.dart';
import 'package:my_app/screens/dashboardSscreen/drawer.dart';
import 'package:my_app/screens/nearbyScreen/screenComponents/nearby_list.dart';
import 'package:my_app/screens/nearbyScreen/screenComponents/screen_tabs.dart';
import 'package:my_app/utils/colors.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: appBar(
        'Community',
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(width: 0.5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    const SizedBox(
                      height: 10,
                    ),
                    NearByScreenTabs(onPress: () {}, buttonText: 'Offers'),
                  ],
                ),
              ),
              ListDescription(
                  listDescription: 'Other nearby events', moreText: 'More'),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: eventListData.length,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.5),
                      color: ColorsPage.listColor),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.only(bottom: 15, top: 15),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  eventListData[index].eListName,
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
                              ],
                            ),
                            Image.asset(eventListData[index].eImage),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ListDescription(
                    listDescription: 'Other nearby events', moreText: 'More'),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 120,
                ),
                child: GridView.builder(
                  itemCount: catagoryListData.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (index < screens.length) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => screens[index],
                          ),
                        );
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(catagoryListData[index].cImage),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
