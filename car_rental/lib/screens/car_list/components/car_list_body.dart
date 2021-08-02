import 'package:car_rental/screens/car_list/components/car_list_content.dart';
import 'package:flutter/material.dart';


class CarListBody extends StatelessWidget {
  const CarListBody({Key? key, required this.listTitle}) : super(key: key);
  final String listTitle;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> carsData = [
      {
        'car_name': 'Classic Car',
        'price': '34',
        'image': 'assets/images/Beep Beep Medium Vehicle.png',
        'color': '0xFFB67853'
      },
      {
        'car_name': 'Sport Car',
        'price': '55',
        'image': 'assets/images/Beep Beep Racer.png',
        'color': '0xFF60B5F4'
      },
      {
        'car_name': 'Flying Car',
        'price': '500',
        'image': 'assets/images/Beep Beep UFO.png',
        'color': '0xFF8382C2'
      },
      {
        'car_name': 'Electric Car',
        'price': '45',
        'image': 'assets/images/Beep Beep Hatchback.png',
        'color': '0xFF2A3640'
      },
    ];

    List<Map<String, String>> bigCarsData = [
      {
        'car_name': 'Motorhome',
        'price': '23',
        'image': 'assets/images/Beep Beep Large Vehicle.png',
        'color': '0xFF7EB0AA'
      },
      {
        'car_name': 'Pickup',
        'price': '10',
        'image': 'assets/images/Beep Beep Pickup.png',
        'color': '0xFFAD8E73'
      },
      {
        'car_name': 'Airplane',
        'price': '11',
        'image': 'assets/images/Beep Beep UFO.png',
        'color': '0xFF8382C2'
      },
      {
        'car_name': 'Bus',
        'price': '14',
        'image': 'assets/images/Beep Beep Bus.png',
        'color': '0xFFE4C970'
      },
    ];

    List<Map<String, String>> bikesData = [
      {
        'car_name': 'Vespa',
        'price': '23',
        'image': 'assets/images/Beep Beep Small Vehicle.png',
        'color': '0xFFD7913F'
      },
      {
        'car_name': 'Elecric Bike',
        'price': '10',
        'image': 'assets/images/Beep Beep Electric Bike.png',
        'color': '0xFFDF7588'
      },
      {
        'car_name': 'Delivery Bike',
        'price': '11',
        'image': 'assets/images/Beep Beep Delivery Bike.png',
        'color': '0xFF60C1DC'
      },
      {
        'car_name': 'Scooter',
        'price': '14',
        'image': 'assets/images/Beep Beep Scooter.png',
        'color': '0xFF6C6363'
      },
    ];
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: carsData.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: CarListContent(
                color: listTitle == 'Cars' ? carsData[index]['color']! : listTitle == 'Big Cars'? bigCarsData[index]['color']! : bikesData[index]['color']!,
                title: listTitle == 'Cars' ? carsData[index]['car_name']! : listTitle == 'Big Cars' ? bigCarsData[index]['car_name']! : bikesData[index]['car_name']!,
                subTitle: listTitle == 'Cars' ? "\$" + carsData[index]['price']! + '/day' : listTitle == 'Big Cars'? "\$" + bigCarsData[index]['price']! + '/day' : "\$" + bikesData[index]['price']! + '/day',
                image: listTitle == 'Cars' ? carsData[index]['image']! : listTitle == 'Big Cars' ? bigCarsData[index]['image']! : bikesData[index]['image']!,
                description: 'Wanna ride the coolest sport car in the world?',
              ),
            );
          },
        ),
      ),
    );
  }
}
