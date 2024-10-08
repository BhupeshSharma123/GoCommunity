import 'package:flutter/material.dart';

class AlertListData {
  late String alistName;
  late String atime;

  AlertListData({required this.alistName, required this.atime});
}

class EventsListData {
  late String eListName;
  late String eName;
  late String eDate;
  late String eImage;

  EventsListData(
      {required this.eListName,
      required this.eName,
      required this.eDate,
      required this.eImage});
}

class DocList {
  late String dFileName;
  late String dSize;
  late String dFileImage;

  DocList(
      {required this.dFileImage, required this.dSize, required this.dFileName});
}

class CatagoryList {
  late String cImage;

  CatagoryList({
    required this.cImage,
  });
}

class ChatList {
  late String cImage;
  late String cName;
  late String cMessage;

  ChatList({required this.cName, required this.cMessage, required this.cImage});
}

class CommunityReservatonList {
  late Color color;
  late String rMsg;
  late String rText;
  CommunityReservatonList({
    required this.color,
    required this.rText,
    required this.rMsg,
  });
}

class CommunityResourcesList {
  late String name;
  late String time;
  late String people;
  CommunityResourcesList({
    required this.name,
    required this.time,
    required this.people,
  });
}

class DrawerList {
  late String text;
  late String imagePath;

  DrawerList({required this.imagePath, required this.text});
}
