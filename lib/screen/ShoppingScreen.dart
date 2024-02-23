import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/utils/DataGenerator.dart';


import '../../../main.dart';
import '../model/ShoppingModel.dart';

class ShoppingScreen extends StatelessWidget {
  final List<ShoppingModel> list = getShopping();

ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image(image: const AssetImage('images/ic_logo.png'), height: 30, width: 30, color: appStore.isDarkModeOn ? Colors.white : Colors.black, fit: BoxFit.cover),
        leading: InkWell(
          onTap: () {
            finish(context);
          },
          child: Icon(Icons.clear, color: context.iconColor, size: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              //
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(8)),
              child: Text(list[index].name!, textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
            ),
          );
        },
      ),
    );
  }
}
