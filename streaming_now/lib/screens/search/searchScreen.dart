import 'package:flutter/material.dart';
import 'package:streaming_now/components/app_bar/app_bar.dart';

import 'components/searchScreenBody.dart';
import 'components/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Streaming Now', context),
      body: SearchScreenBody(),
      floatingActionButton: SearchBar(),
    );
  }
}
