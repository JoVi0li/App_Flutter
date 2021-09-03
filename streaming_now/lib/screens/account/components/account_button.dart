import 'package:flutter/material.dart';
import 'package:streaming_now/utils/constants.dart';
import 'package:streaming_now/utils/size_config.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({Key? key, required this.buttonText}) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        buttonText,
        style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 18),
      ),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith(
          (states) => Size(
            getProportionateScreenWidth(187),
            getProportionateScreenHeight(50),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => cardAndButtonColor,
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
