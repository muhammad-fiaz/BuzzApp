import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/DevelopmentScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';

import '../../../main.dart';
import '../model/ShoppingModel.dart';

class ProductScreen extends StatefulWidget {
  final String? img;

  const ProductScreen({super.key, this.img});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ShoppingModel> data = getProductData();
  List<ShoppingModel> list = getAllData();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image(
          image: const AssetImage('images/ic_logo.png'),
          height: 30,
          width: 30,
          color: appStore.isDarkModeOn ? Colors.white : Colors.black,
          fit: BoxFit.cover,
        ),
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0x00000000), width: 1),
        ),
        leading: InkWell(
          onTap: () {
            finish(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 2),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(widget.img!),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Container(height: 250, decoration: BoxDecoration(color: Colors.black12.withOpacity(0.3)))
              ],
            ),
            const SizedBox(height: 16, width: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("45 items", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                  Icon(Icons.sort, color: context.iconColor, size: 24),
                ],
              ),
            ),
            const SizedBox(height: 16, width: 16),
            SizedBox(
              height: 35,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 8, right: 8),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      currentIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 8, right: 8),
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                      decoration: BoxDecoration(
                        color: currentIndex == index ? const Color(0xff000000) : context.cardColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Text(
                        data[index].name!,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: boldTextStyle(size: 12, color: currentIndex == index ? Colors.white : Colors.grey),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const DevScreen().withHeight(context.height() * 0.6),
          ],
        ),
      ),
    );
  }
}
