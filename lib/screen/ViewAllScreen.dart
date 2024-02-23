import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/component/ProductItemWidget.dart';


import '../../../main.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  ViewAllScreenState createState() => ViewAllScreenState();
}

class ViewAllScreenState extends State<ViewAllScreen> {
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
        title: Image(image: const AssetImage('images/ic_logo.png'), height: 30, width: 30, color: appStore.isDarkModeOn ? Colors.white : Colors.black, fit: BoxFit.cover),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Color(0x00000000), width: 1)),
        leading: InkWell(
          onTap: () {
            finish(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
      ),
      body: ProductItemWidget(),
    );
  }
}
