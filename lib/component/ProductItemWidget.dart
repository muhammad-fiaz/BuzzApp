import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/component/BestODWidget.dart';
import 'package:buzz/screen/DetailScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';

import '../model/ShoppingModel.dart';

class ProductItemWidget extends StatelessWidget {
  final List<ShoppingModel> list = getAllData();

  ProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 60),
      child: Wrap(
        runSpacing: 16,
        spacing: 16,
        children: list.map(
          (e) {
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                DetailScreen(img: e.img).launch(context);
              },
              child: BestODWidget(title: e.name, img: e.img, subtitle: e.subtitle, amount: e.amount),
            );
          },
        ).toList(),
      ),
    );
  }
}
