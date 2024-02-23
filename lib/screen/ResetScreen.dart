import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/SignInScreen.dart';
import 'package:buzz/utils/Widgets.dart';


import '../../../main.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0x00000000), width: 1),
          borderRadius: BorderRadius.zero,
        ),
        leading: InkWell(
          onTap: () {
            finish(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image(
                image: const AssetImage("images/ic_checkmark.png"),
                height: 120,
                width: 120,
                fit: BoxFit.cover,
                color: appStore.isDarkModeOn ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 32),
            Text("Reset Successful", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
            const SizedBox(height: 32, width: 16),
            sSAppButton(
              context: context,
              title: 'Sign in now',
              onPressed: () {
                const SignInScreen().launch(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
