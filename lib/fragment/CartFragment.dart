import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/BillingAddressScreen.dart';
import 'package:buzz/screen/DetailScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';
import 'package:buzz/utils/Widgets.dart';

import '../model/ShoppingModel.dart';

class CartFragment extends StatefulWidget {
  const CartFragment({super.key});

  @override
  CartFragmentState createState() => CartFragmentState();
}

class CartFragmentState extends State<CartFragment> {
  final List<ShoppingModel> list = getAllCart();

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
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
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0x00000000), width: 1),
        ),
        title: Text("Cart", style: boldTextStyle()),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                DetailScreen(img: list[index].img).launch(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white12, width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(image: AssetImage(list[index].img!), height: 80, width: 140, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 16, width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(list[index].name!, textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                      const SizedBox(height: 4),
                      Text(list[index].subtitle!, textAlign: TextAlign.start, overflow: TextOverflow.clip, style: secondaryTextStyle()),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            list[index].amount!,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: boldTextStyle(size: 14),
                          ),
                          const SizedBox(width: 32),
                          Text('x1', style: secondaryTextStyle(size: 14))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
        height: 170,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: context.cardColor,
          boxShadow: defaultBoxShadow(),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('Promo code', style: secondaryTextStyle()),
                ),
                Text('NK54T3U', style: boldTextStyle()),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.6)),
                  child: const Icon(Icons.close, size: 16, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(color: Colors.grey, height: 1),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('2items', style: secondaryTextStyle()),
                Text('\$364.00', style: boldTextStyle()),
              ],
            ),
            const SizedBox(height: 16),
            sSAppButton(
              context: context,
              onPressed: () {
                const BillingAddressScreen().launch(context);
              },
              title: 'Checkout',
            ),
          ],
        ),
      ),
    );
  }
}
