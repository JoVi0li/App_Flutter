import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_money_app/src/controllers/tab_controller.dart';
import 'package:save_money_app/src/my_app.dart';
import 'package:save_money_app/src/repositories/week_repository.dart';
import 'package:save_money_app/src/stores/week_store.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => WeekRepository()),
        ChangeNotifierProvider(create: (context) => WeekStore(context.read())),
        ChangeNotifierProvider(create: (context) => MyTabController())
      ],
      child: const MyApp(),
    ),
  );
}
