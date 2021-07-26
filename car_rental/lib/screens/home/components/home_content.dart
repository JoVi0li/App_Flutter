import 'package:car_rental/constants.dart';
import 'package:car_rental/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
    required this.color,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  final Color color;
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 0,
        child: Container(
          height: getProportionateScreenHeight(166),
          width: getProportionateScreenWidth(306),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: getProportionateScreenHeight(143.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: color),
              ),
              Positioned(
                left: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: getProportionateScreenWidth(24),
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: getProportionateScreenWidth(14),
                        color: i06,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: getProportionateScreenHeight(42.5),
                left: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(95),
                right: getProportionateScreenWidth(257.5),
                // width: getProportionateScreenWidth(28.5),
                // height: getProportionateScreenHeight(28.5),
                child: IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/star-rating.svg',
                    width: getProportionateScreenWidth(28.5),
                    height: getProportionateScreenHeight(28.5),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: getProportionateScreenHeight(-28.5),
                width: getProportionateScreenWidth(200),
                height: getProportionateScreenHeight(124),
                child: Image.asset(image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
