import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/model/listdata.dart';
import 'package:my_app/utils/colors.dart';

class AlertList extends StatelessWidget {
  const AlertList({
    super.key,
    required this.listData,
  });

  final List<AlertListData> listData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: listData.length,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorsPage.listColor),
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.only(bottom: 20, top: 20),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: 40,
              child: Image.asset('assets/png/alertIcon.png'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listData[index].alistName,
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorsPage.signupTextColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/png/clock.png',
                        height: 9,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        listData[index].atime,
                        style: GoogleFonts.roboto(
                            color: ColorsPage.timeColor,
                            fontSize: 9,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
