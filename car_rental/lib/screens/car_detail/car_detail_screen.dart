import 'package:car_rental/constants.dart';
import 'package:car_rental/screens/car_detail/components/car_detail_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../size_config.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({
    Key? key,
    required this.title,
    required this.carName,
    required this.price,
    required this.image,
    required this.description,
    required this.color,
  }) : super(key: key);

  final String title;
  final String carName;
  final String price;
  final String image;
  final String description;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CarDetailAppBar(carName: carName),
        preferredSize: Size.fromHeight(
          getProportionateScreenHeight(50),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: getProportionateScreenHeight(300),
            alignment: Alignment.center,
            child: Image.asset(
              image,
              width: MediaQuery.of(context).size.width * 0.95,
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: Container(
              height: getProportionateScreenHeight(350),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(
                  int.parse(this.color),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 40, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          this.carName,
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: getProportionateScreenWidth(39),
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/icons/star-rating.svg'),
                        ),
                      ],
                    ),
                    Text(
                      this.price,
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: getProportionateScreenWidth(19),
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: getProportionateScreenWidth(19),
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          this.description,
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Book Now', style: GoogleFonts.poppins().copyWith(fontSize: getProportionateScreenWidth(15), fontWeight: FontWeight.w600, color: black),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        
                        fixedSize: MaterialStateProperty.all(
                          Size(
                            getProportionateScreenWidth(315),
                            getProportionateScreenHeight(57),
                          ),
                        ),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
