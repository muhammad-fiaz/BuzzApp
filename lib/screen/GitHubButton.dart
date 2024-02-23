import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class DevButton extends StatelessWidget {
  const DevButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Check our GitHub Repository',
      color: const Color(0xff000000),
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launch("https://github.com/muhammad-fiaz/BuzzApp");
      },
    );
  }
}
