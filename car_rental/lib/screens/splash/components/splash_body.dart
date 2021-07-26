import 'package:car_rental/components/default_button.dart';
import 'package:car_rental/screens/home/home_screen.dart';
import 'package:car_rental/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  List<Map<String, String>> splashData = [
    {
      'title': 'Find Your Vehicle',
      'text': 'Find the perfect vehicle for every occasion!',
      'image': 'assets/images/beep_beep_drifting.png'
    },
    {
      'title': 'Your dream Car',
      'text': 'Rent the car you’ve always wanted to drive.',
      'image': 'assets/images/Beep Beep Sightseeing.png'
    },
    {
      'title': 'Small Ones Too!',
      'text': 'Rent a small vehicle for those short distances',
      'image': 'assets/images/Beep Beep Fast Delivery.png'
    },
    {
      'title': 'Find Our Stations',
      'text': 'Find your nearest station to rent your car!',
      'image': 'assets/images/Beep Beep Location.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                title: splashData[index]['title'],
                text: splashData[index]['text'],
                image: splashData[index]['image'],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                ),
                DefaultButton(
                  press: () {
                    currentPage == 3
                        ? Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                            (route) => false
                          )
                        : currentPage++;
                    _pageController.animateToPage(currentPage, duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                  text: currentPage == 3 ? 'Get Started' : 'Continue',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 15 : 6,
      height: 4,
      decoration: BoxDecoration(
        color: currentPage == index ? orange : aOrange,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
