import 'package:course_app/views/screens/course_details.dart';
import 'package:course_app/views/screens/home.dart';
import 'package:course_app/views/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const Home(),
      const Center(child: Text('Favorite Screen')),
      CourseDetailScreen(),
      PaymentScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      _bottomNavBarItem(MingCute.home_4_fill, MingCute.home_4_line),
      _bottomNavBarItem(MingCute.heart_fill, MingCute.heart_line),
      _bottomNavBarItem(MingCute.notification_fill, MingCute.notification_line),
      _bottomNavBarItem(MingCute.profile_fill, MingCute.profile_line),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      isVisible: false,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : 60.0,
      decoration: const NavBarDecoration(
        colorBehindNavBar: Colors.white,
      ),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }

  PersistentBottomNavBarItem _bottomNavBarItem(IconData iconFill, IconData iconLine){
    return PersistentBottomNavBarItem(
        icon: Icon(iconFill),
        inactiveIcon: Icon(iconLine),
        activeColorPrimary: Colors.lightGreen.shade200,
        inactiveColorPrimary: Colors.grey
    );
  }
}