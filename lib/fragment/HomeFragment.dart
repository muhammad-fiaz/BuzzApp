import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/component/BestODWidget.dart';
import 'package:buzz/screen/DetailScreen.dart';
import 'package:buzz/screen/ViewAllScreen.dart';
import 'package:buzz/utils/DataGenerator.dart';
import 'package:buzz/utils/Widgets.dart';

import '../../../main.dart';
import '../model/ShoppingModel.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  final List<ShoppingModel> list = getAllData();
  final List<ShoppingModel> data = getSearchData();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    afterBuildCreated(() {
      dialog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image(
          image: const AssetImage('images/ic_logo.png'),
          height: 30,
          width: 30,
          color: appStore.isDarkModeOn ? Colors.white : Colors.black,
          fit: BoxFit.cover,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Responsive(
              web: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Image(image: const AssetImage('images/ic_banner1.jpg'), height: 600, width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
              ),
              mobile: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Image(
                  image: const AssetImage('images/ic_banner1.jpg'),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Best of Orders", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                  TextButton(
                    onPressed: () {
                      const ViewAllScreen().launch(context);
                    },
                    child: Text("Show all", style: secondaryTextStyle()),
                  ),
                ],
              ),
            ),
            HorizontalList(
              padding: const EdgeInsets.only(left: 16, right: 16),
              itemCount: list.length,
              itemBuilder: (_, index) {
                return InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    DetailScreen(img: list[index].img).launch(context);
                  },
                  child: BestODWidget(title: list[index].name, img: list[index].img, subtitle: list[index].subtitle, amount: list[index].amount),
                );
              },
            ),
            const SizedBox(height: 16, width: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text("New Arrivals", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
            ),
            Responsive(
              mobile: ListView.builder(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return arrivalWidget(context: context, img: data[index].img);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> dialog() async {
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image(image: const AssetImage('images/ic_arrivals_2.jpg'), height: 200, width: context.width(), fit: BoxFit.cover),
                    IconButton(
                      onPressed: () {
                        finish(context);
                      },
                      icon: const Icon(Icons.close, color: Colors.black),
                    )
                  ],
                ),
                Container(
                  height: 80,
                  padding: const EdgeInsets.all(16),
                  width: context.width(),
                  color: context.cardColor,
                  child: sSAppButton(
                    textColor: Colors.white,
                    title: 'Shop Now',
                    context: context,
                    onPressed: () {
                      finish(context);
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
