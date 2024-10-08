import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/chatScreen/list_data.dart';

import 'package:my_app/screens/dashboardSscreen/dashboard_methods.dart';

import 'package:my_app/utils/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: const Drawer(),
        appBar: appBar('Chat'),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: chatListData.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/png/download.png',
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatListData[index].cName,
                          style: GoogleFonts.roboto(
                              color: ColorsPage.signupTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          chatListData[index].cMessage,
                          style: GoogleFonts.roboto(
                            color: Color(0xff989EB1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      'Just now',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
