import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboardSscreen/dashboard_screen.dart';
import 'package:my_app/screens/HomeScreens/signin_screen.dart';
import 'package:my_app/screens/HomeScreens/submit_screen.dart';
import 'package:my_app/screens/HomeScreens/verify_screen.dart';
import 'package:my_app/screens/HomeScreens/welcome_screen.dart';

List<Widget> screens = [
  WelcomeScreen(),
  SigninScreen(),
  SubmitScreen(),
  VerifyScreen(),
  DashboardScreen(),
];
