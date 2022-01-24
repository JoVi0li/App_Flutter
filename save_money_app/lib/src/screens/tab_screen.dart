import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_money_app/src/controllers/tab_controller.dart';
import 'package:save_money_app/src/widgets/custom_bottom_navigation_bar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late MyTabController _tabController;

  @override
  void initState() {
    _tabController = context.read<MyTabController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _tabController,
        builder: (context, value, child) {
          return _tabController.screens[_tabController.value];
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: CustomBottomNavigationBar(
          onTap: (index) {
            _tabController.selectScreen(index);
          },
          currentIndex: _tabController.value,
        ),
      ),
    );
  }
}
