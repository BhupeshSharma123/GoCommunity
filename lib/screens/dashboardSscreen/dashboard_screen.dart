// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/dashboardSscreen/drawer.dart';
import 'package:my_app/utils/colors.dart';

import 'package:my_app/screens/dashboardSscreen/dashscreen_lists.dart';
import 'package:my_app/screens/dashboardSscreen/dashboardComponents/alert_list.dart';
import 'package:my_app/screens/dashboardSscreen/dashboardComponents/bottombar.dart';
import 'package:my_app/screens/dashboardSscreen/dashboardComponents/event_list.dart';

import 'package:my_app/screens/dashboardSscreen/dashboardComponents/list_heading.dart';

import 'dashboard_methods.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ButtomBarWidget(),
        backgroundColor: Colors.white,
        drawer: MyDrawer(),
        appBar: appBar('GoCommunity'),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: [
                ListDescription(
                  listDescription: 'Latest Alerts from Your Community',
                  moreText: 'More',
                ),
                const SizedBox(
                  height: 20,
                ),
                AlertList(listData: alertListData),
                ListDescription(
                  listDescription: 'Upcoming events',
                  moreText: 'More',
                ),
                SizedBox(
                  height: 20,
                ),
                EventList(),
                ListDescription(
                  listDescription: 'Latest Documents',
                  moreText: 'More',
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: docListData.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorsPage.listColor),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Image.asset(docListData[index].dFileImage),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  docListData[index].dFileName,
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorsPage.signupTextColor),
                                ),
                                Text(
                                  docListData[index].dSize,
                                  style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: ColorsPage.signupTextColor),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/png/download.png',
                            height: 24,
                          )
                        ],
                      ),
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
