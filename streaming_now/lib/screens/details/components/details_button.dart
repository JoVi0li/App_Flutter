import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streaming_now/utils/constants.dart';
import 'package:streaming_now/utils/size_config.dart';

class CustomDetailsButton extends StatelessWidget {
  const CustomDetailsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: getProportionateScreenWidth(382),
        height: getProportionateScreenHeight(55),
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset('assets/icons/Eye.svg'),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              Text(
                'Onde Assistir',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
