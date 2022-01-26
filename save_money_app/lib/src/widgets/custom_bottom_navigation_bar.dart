import 'package:flutter/material.dart';
import 'package:save_money_app/src/utils/constants.dart';
import 'package:save_money_app/src/widgets/custom_modal_widget.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: primaryColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: primaryColor,
              ),
              label: 'Historic',
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              useSafeArea: true,
              barrierColor: surfaceColor.withOpacity(0.5),
              context: context,
              builder: (BuildContext ctx) {
                return const CustomModalWidget();
              },
            );
          },
          child: Container(
            width: 64,
            height: 64,
            decoration: const BoxDecoration(
              color: secondaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: backgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
