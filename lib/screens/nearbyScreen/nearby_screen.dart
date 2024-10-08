import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/model/screen_model.dart';

import 'package:my_app/screens/dashboardSscreen/dashboardComponents/list_heading.dart';
import 'package:my_app/screens/dashboardSscreen/dashboard_methods.dart';
import 'package:my_app/screens/dashboardSscreen/drawer.dart';
import 'package:my_app/screens/nearbyScreen/screenComponents/nearby_list.dart';
import 'package:my_app/screens/nearbyScreen/screenComponents/screen_tabs.dart';

import 'package:my_app/utils/colors.dart';

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  State<NearbyScreen> createState() => _NearbyScreenState();
}

class _NearbyScreenState extends State<NearbyScreen> {
  final TextStyle kFooterTextStyle = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: ButtomBarWidget(),
        backgroundColor: Colors.white,
        drawer: const MyDrawer(),
        appBar: appBar('NearBy'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(width: 0.5))),
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
                        NearByScreenTabs(onPress: () {}, buttonText: 'Offers')
                      ],
                    ),
                  ),
                  const ListDescription(
                    listDescription: 'Store category',
                    moreText: '',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    itemCount: catagoryListData.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                  const ListDescription(
                      listDescription: 'Nearest Stores', moreText: ''),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    physics: PageScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              // color: Colors.amberAccent,

                              border: Border(
                                top: BorderSide(width: 0.2),
                                left: BorderSide(width: 0.2),
                                right: BorderSide(width: 0.2),
                                bottom: BorderSide(width: 0.2),
                              ),
                              // color: Colors.cyanAccent,
                            ),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 220,
                                  width: 410,
                                  child: Image.asset(
                                      'assets/png/Rectangle10.png',
                                      fit: BoxFit.cover),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 150, left: 20),
                                      child: Text(
                                        'Super Market',
                                        style: GoogleFonts.roboto(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Grocery store',
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '4.0',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Image.asset('assets/png/stars.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('(102)', style: kFooterTextStyle),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child:
                                      Image.asset('assets/png/marketicon.png'),
                                ),
                                // SizedBox(
                                //   width: 15,
                                // ),
                                Text(
                                  'Closes 10PM',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: ColorsPage.signupTextColor),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                'assets/png/place.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Maiami, Florida, US',
                                  style: kFooterTextStyle),
                            ],
                          ),
                          Divider(
                            indent: 30,
                            endIndent: 30,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/png/ellipse6.png',
                                  width: 8,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('In-store shopping',
                                    style: kFooterTextStyle),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/png/ellipse5.png',
                                  width: 8,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '0132 662 2608',
                                  style: kFooterTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
