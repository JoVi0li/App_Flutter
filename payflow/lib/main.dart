import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_screen.dart';
// import 'package:payflow/modules/splash/splash_screen.dart';
import 'package:payflow/shared/themes/appColors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: LoginScreen(),
    );
  }
}
