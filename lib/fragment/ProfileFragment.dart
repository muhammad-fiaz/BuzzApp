import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/main.dart';
import 'package:buzz/utils/Colors.dart';
import 'package:buzz/utils/DataGenerator.dart';
import 'package:buzz/utils/Widgets.dart';

import '../model/ShoppingModel.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({super.key});

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  final List<ShoppingModel> data = getAccount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("My Account", style: boldTextStyle()),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: const Image(image: AssetImage('images/ic_arrivals_1.jpg'), height: 100, width: 100, fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.2, -0.2),
                  child: Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(color: const Color(0xff000000), shape: BoxShape.circle, border: Border.all(color: const Color(0x4d9e9e9e), width: 1)),
                    child: const Icon(Icons.edit, color: Color(0xffffffff), size: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16, width: 16),
            Text("User Name", style: primaryTextStyle()),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                settingWidget(title: '0', subtitle: 'Processing'),
                Container(height: 30, width: 1, color: Colors.grey, margin: const EdgeInsets.only(bottom: 16)),
                settingWidget(title: '1', subtitle: 'Shipped'),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(bottom: 16),
                ),
                settingWidget(title: '0', subtitle: 'Pickup'),
              ],
            ),
            const SizedBox(height: 16),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(data[index].name!, textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle(size: 16)),
                          Icon(Icons.arrow_forward_ios, color: context.iconColor, size: 17),
                        ],
                      ),
                      const SizedBox(height: 8, width: 16),
                      Divider(color: Colors.grey.withOpacity(0.5), height: 16, thickness: 0, indent: 0, endIndent: 0),
                    ],
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DarkMode', style: boldTextStyle(size: 16)),
                Transform.scale(
                  scale: 1,
                  child: Switch(
                    value: appStore.isDarkModeOn,
                    activeColor: appColorPrimary,
                    onChanged: (s) {
                      appStore.toggleDarkMode(value: s);
                    },
                  ),
                )
              ],
            ).onTap(() {
              appStore.toggleDarkMode();
            }),
            Divider(color: Colors.grey.withOpacity(0.5), height: 16, thickness: 0, indent: 0, endIndent: 0),
          ],
        ),
      ),
    );
  }
}
