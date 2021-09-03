import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streaming_now/screens/account/accountScreen.dart';
import 'package:streaming_now/screens/favorites/favoritesScreen.dart';
import 'package:streaming_now/screens/home/homeScreen.dart';
import 'package:streaming_now/screens/search/searchScreen.dart';
import 'package:streaming_now/utils/constants.dart';

class CustomTabScreen extends StatefulWidget {
  const CustomTabScreen({Key? key}) : super(key: key);

  @override
  _CustomTabScreenState createState() => _CustomTabScreenState();
}

class _CustomTabScreenState extends State<CustomTabScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
    AccountScreen(),
  ];

  _selectedScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: accentColor,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _selectedScreen,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Home.svg'),
            label: 'Home',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Search.svg'),
            label: 'Search',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Heart.svg'),
            label: 'Favorites',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            label: 'User',
            backgroundColor: accentColor,
          ),
        ],
      ),
    );
  }
}
