import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/DevelopmentScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';

import '../model/ShoppingModel.dart';

class FavoriteFragment extends StatelessWidget {
  final List<ShoppingModel> list = getAllFavorite();

 FavoriteFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("WishList", style: boldTextStyle()),
      ),
      body: const DevScreen(),
    );
  }
}
