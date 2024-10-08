import 'package:flutter/material.dart';
import 'package:my_app/model/listdata.dart';

List<CommunityReservatonList> resvListData = [
  CommunityReservatonList(
      color: Color(0xff54D235), rText: 'Swimming Pool', rMsg: 'Approved'),
  CommunityReservatonList(
      color: Color(0xffEEA71C), rText: 'Tennis Court', rMsg: 'Pending')
];
List<CommunityResourcesList> resorceListData = [
  CommunityResourcesList(
      name: 'Kids Play Area',
      time: '5:00 PM - 7:00 PM',
      people: '20/50 People'),
  CommunityResourcesList(
      name: 'Basketball court',
      time: '9:00 AM - 11:00 AM',
      people: '6/10 People')
];
