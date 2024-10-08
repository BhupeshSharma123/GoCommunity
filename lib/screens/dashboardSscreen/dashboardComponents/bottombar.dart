import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/chatScreen/chat_screen.dart';
import 'package:my_app/screens/community_screen/community_screen.dart';
import 'package:my_app/screens/nearbyScreen/nearby_screen.dart';
import 'package:my_app/screens/HomeScreens/profile_screen.dart';
import 'package:my_app/screens/HomeScreens/welcome_screen.dart';

class ButtomBarWidget extends StatefulWidget {
  const ButtomBarWidget({super.key});

  @override
  State<ButtomBarWidget> createState() => _ButtomBarWidgetState();
}

class _ButtomBarWidgetState extends State<ButtomBarWidget> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return WelcomeScreen();
            case 1:
              return ChatScreen();
            case 2:
              return CommunityScreen();
            case 3:
              return NearbyScreen();
            case 4:
              return ProfileScreen();
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedLabelStyle:
            GoogleFonts.roboto(fontSize: 10, fontWeight: FontWeight.w400),
        fixedColor: Color(0xff989EB1),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/home.png',
              height: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/chat.png',
              height: 20,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/community.png',
              height: 20,
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/nearby.png',
              height: 20,
            ),
            label: 'NearBy',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/barpic.png',
              height: 20,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
