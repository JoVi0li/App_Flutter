import 'package:flutter/material.dart';
import 'package:streaming_now/components/app_bar/app_bar.dart';
import 'package:streaming_now/screens/account/components/accountScreenBody.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Meu Perfil', context),
      body: AccountScreenBody(),
    );
  }
}
