import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/main.dart';
import 'package:buzz/screen/OrderScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';
import 'package:buzz/utils/Widgets.dart';

import '../model/ShoppingModel.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int mCount = 0;

  List<ShoppingModel> payment = paymentList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Checkout", style: boldTextStyle()),
        leading: InkWell(
          onTap: () {
            finish(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Icon(Icons.location_on, color: Color(0xff808080), size: 24),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000), width: 1),
                  ),
                ),
                const Icon(Icons.credit_card, color: Color(0xff808080), size: 24),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                const Icon(Icons.verified, color: Color(0xff808080), size: 24),
              ],
            ),
            const SizedBox(height: 32, width: 16),
            Text("Payment Option", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
            const SizedBox(height: 16, width: 16),
            ListView.builder(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              shrinkWrap: true,
              itemCount: payment.length,
              itemBuilder: (_, index) {
                return InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    mCount = index;
                    setState(() {});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: mCount == index ? context.iconColor : Colors.grey.withOpacity(0.3), width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: mCount == index ? context.iconColor : Colors.grey.withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                          ),
                          Text(
                            payment[index].name!,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: boldTextStyle(color: mCount == index ? context.iconColor : Colors.grey.withOpacity(0.5)),
                          ),
                          Image(image: AssetImage(payment[index].img!), height: 30, width: 30, fit: BoxFit.cover),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
        height: 220,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: context.cardColor,
          boxShadow: defaultBoxShadow(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('Sub - total', style: secondaryTextStyle()),
                ),
                Text('\$354.00', style: boldTextStyle()),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(color: Colors.grey, height: 1),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping fee', style: secondaryTextStyle()),
                Text('\$24.00', style: boldTextStyle()),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Payment', style: primaryTextStyle()),
                Text('\$378.00', style: boldTextStyle()),
              ],
            ),
            const SizedBox(height: 16),
            sSAppButton(
              context: context,
              title: 'Place Order',
              onPressed: () async {
                const OrderScreen().launch(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
