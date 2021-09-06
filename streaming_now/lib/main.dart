import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:streaming_now/providers/item_list_provider.dart';
import 'package:streaming_now/screens/tab_bar/tab_screen.dart';
import 'package:streaming_now/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ItemListProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: primaryColor,
          textTheme: TextTheme(
            headline1: GoogleFonts.oswald().copyWith(
              fontSize: 48,
              color: errorAndAccentColor,
            ),
            headline2: GoogleFonts.oswald().copyWith(
              fontSize: 24,
              color: errorAndAccentColor,
            ),
            headline3: GoogleFonts.yantramanav().copyWith(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            headline4: GoogleFonts.yantramanav().copyWith(
              fontSize: 24,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            headline5: GoogleFonts.yantramanav().copyWith(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: CustomTabScreen(),
      ),
    );
  }
}
