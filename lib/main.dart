import 'package:flutter/material.dart';
// import 'package:my_app/screens/chatScreen/chat_screen.dart';
import 'package:my_app/screens/dashboardSscreen/dashboard_screen.dart';

import 'package:my_app/screens/nearbyScreen/nearby_screen.dart';

import 'package:my_app/screens/HomeScreens/profile_screen.dart';

import 'package:my_app/screens/HomeScreens/signin_screen.dart';
import 'package:my_app/screens/HomeScreens/submit_screen.dart';
import 'package:my_app/screens/HomeScreens/verify_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SubmitScreen(),
        '/second': (context) => const SubmitScreen(),
        '/third': (context) => const SigninScreen(),
        '/fourth': (context) => const VerifyScreen(),
        '/Fifth': (context) => const ProfileScreen(),
        '/Sixth': (context) => const DashboardScreen(),
        '/Seventh': (context) => const NearbyScreen(),
      },
    );
  }
}
