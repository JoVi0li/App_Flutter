import 'package:flutter/material.dart';
import 'package:streaming_now/components/app_bar/app_bar.dart';
import 'package:streaming_now/screens/home/components/homeScreenBody.dart';
import 'package:streaming_now/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar('Streaming Now', context),
      body: HomeScreenBody(),
    );
  }
}
