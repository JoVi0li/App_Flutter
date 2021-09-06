import 'package:flutter/material.dart';
import 'package:streaming_now/screens/details/components/detailsScreenBody.dart';

import 'components/details_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenBody(),
      floatingActionButton: CustomDetailsButton(),
    );
  }
}
