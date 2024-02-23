import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/VerifyNumberScreen.dart';
import 'package:buzz/utils/Widgets.dart';


import '../../../main.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0x00000000), width: 1),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 16),
            Text("Forgot Password", style: boldTextStyle(size: 18)),
            const SizedBox(height: 16, width: 16),
            Text("Enter your mobile number", style: primaryTextStyle()),
            const SizedBox(height: 16, width: 16),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 14, color: Color(0xff000000)),
              decoration: sSInputDecoration(
                context: context,
                name: 'Mobile',
                icon: Icon(Icons.call, color: Colors.grey.withOpacity(0.4), size: 24),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  VerifyNumberScreen().launch(context);
                },
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: appStore.isDarkModeOn ? context.cardColor : const Color(0xff010101),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                  child: const Icon(Icons.arrow_forward, color: Colors.white, size: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
