import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/DevelopmentScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';

import '../model/ShoppingModel.dart';

class SearchFragment extends StatelessWidget {
  final List<ShoppingModel> list = getSearchData();

 SearchFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0x00000000), width: 1),
        ),
        title: Text("Search", style: boldTextStyle()),
      ),
      body: const DevScreen(),
    );
  }
}
