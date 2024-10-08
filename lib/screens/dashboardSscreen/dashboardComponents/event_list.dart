import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/screens/dashboardSscreen/dashscreen_lists.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Column(
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
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(eventListData[index].eImage),
          ],
        ),
      ),
    );
  }
}
