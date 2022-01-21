import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_money_app/src/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = ThemeData().colorScheme.copyWith(
          primary: const Color(0xFF1C1C1C),
          secondary: const Color(0xFF224029),
          background: const Color(0xFFFFFFFF),
          error: const Color(0xFF8C2E37),
          surface: const Color(0xFFE6E6E6).withOpacity(0.5),
        );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: theme,
        textTheme: TextTheme(
          headline1: GoogleFonts.outfit(
            fontSize: 48,
            fontWeight: FontWeight.w500,
            height: 45,
            color: Theme.of(context).colorScheme.primary,
          ),
          headline2: GoogleFonts.outfit(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            height: 45,
            color: theme.primary,
          ),
          bodyText1: GoogleFonts.outfit(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            height: 45,
            color: theme.primary,
          ),
          bodyText2: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            height: 45,
            color: theme.primary.withOpacity(0.7),
          ),
          overline: GoogleFonts.outfit(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            height: 28,
            color: theme.primary.withOpacity(0.5),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
