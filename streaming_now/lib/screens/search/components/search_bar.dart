import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streaming_now/utils/constants.dart';
import 'package:streaming_now/utils/size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(382),
      height: getProportionateScreenHeight(55),
      decoration: BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
        child: TextField(
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Ex: Simpsons',
            hintStyle: TextStyle(color: Colors.white12),
            icon: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        ),
      ),
    );
  }
}
