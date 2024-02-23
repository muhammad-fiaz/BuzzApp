import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/DevelopmentScreen.dart';
import 'package:buzz/screen/DashBoardScreen.dart';
import 'package:buzz/utils/Widgets.dart';

import '../../../main.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
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
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
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
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
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
                    color: appStore.isDarkModeOn ? context.iconColor : const Color(0xff000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                const Icon(Icons.verified, color: Color(0xff808080), size: 24),
              ],
            ),
            const DevScreen().withHeight(context.height() * 0.7),
            sSAppButton(
              context: context,
              title: 'Continue shopping',
              onPressed: () {
                const DashBoardScreen().launch(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
