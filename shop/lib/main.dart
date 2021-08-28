import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OliShop',
      theme: ThemeData(
        scaffoldBackgroundColor: primary,
        primaryColor: primary,
        accentColor: accent,
        buttonColor: button,
        errorColor: error,
        textTheme: TextTheme(
          headline1: GoogleFonts.dancingScript(),
          headline2: GoogleFonts.titilliumWeb().copyWith(
            fontSize: 24,
            color: Colors.black,
          ),
          headline3: GoogleFonts.titilliumWeb().copyWith(
            color: Colors.white,
            fontSize: 36
          ),
          headline4: GoogleFonts.titilliumWeb().copyWith(),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
