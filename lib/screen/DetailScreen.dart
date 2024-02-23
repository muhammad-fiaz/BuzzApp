import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/component/AddToCartBottomSheet.dart';
import 'package:buzz/utils/Widgets.dart';

import '../../../main.dart';

class DetailScreen extends StatefulWidget {
  final String? img;

  const DetailScreen({super.key, this.img});

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  int index = 0;
  List<String> img = [
    "images/ic_shoes_7.png",
    "images/ic_shoes_9.png",
    "images/ic_shoes_2.png",
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    img.insert(0, widget.img.validate());
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

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
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Color(0x00000000), width: 1)),
        leading: InkWell(
          onTap: () {
            finish(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
        actions: [
          Icon(Icons.favorite_border, color: context.iconColor, size: 20).paddingOnly(right: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(img[index]),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: img.map((e) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        radius: 8,
                        onTap: () {
                          setState(() {
                            index = img.indexOf(e);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: context.cardColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: index == img.indexOf(e) ? Colors.red : Colors.transparent,
                            ),
                          ),
                          child: Image(image: AssetImage(e.validate()), height: 40, width: 40, fit: BoxFit.cover),
                        ),
                      ).paddingRight(8);
                    }).toList(),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Men's shoe", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: secondaryTextStyle()),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Nike Air Vapormax Evo", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                      Text("\$182", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text("Available Sizes", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle(size: 14)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Text("US 7", textAlign: TextAlign.left, overflow: TextOverflow.clip, style: boldTextStyle(size: 12)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Text("US 8", textAlign: TextAlign.left, overflow: TextOverflow.clip, style: boldTextStyle(size: 12)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Text("US 9", textAlign: TextAlign.left, overflow: TextOverflow.clip, style: boldTextStyle(size: 12)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Text("US 10", textAlign: TextAlign.left, overflow: TextOverflow.clip, style: boldTextStyle(size: 12)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16, width: 16),
                  Text("Description", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                  const SizedBox(height: 8),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: secondaryTextStyle()),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.5)), borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.shopping_cart_outlined),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: sSAppButton(
                context: context,
                title: 'Buy Now',
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                    ),
                    context: context,
                    builder: (_) {
                      return const AddToCartBottomSheet();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
