import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/main.dart';
import 'package:buzz/screen/DashBoardScreen.dart';
import 'package:buzz/utils/Widgets.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 32),
            Text(
              "Register",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: boldTextStyle(size: 18),
            ),
            const SizedBox(height: 8),
            Text(
              "Create your new account",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: primaryTextStyle(),
            ),
            const SizedBox(height: 32),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
              ),
              decoration: sSInputDecoration(
                context: context,
                name: 'User name',
                icon: Icon(Icons.email, color: Colors.grey.withOpacity(0.4), size: 24),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 14),
              decoration: sSInputDecoration(
                context: context,
                name: 'Mobile',
                icon: Icon(Icons.call, color: Colors.grey.withOpacity(0.4), size: 24),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 14),
              decoration: sSInputDecoration(
                context: context,
                name: 'Email address',
                icon: Icon(Icons.email, color: Colors.grey.withOpacity(0.4), size: 24),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
              ),
              decoration: sSInputDecoration(
                context: context,
                name: 'Password',
                icon: Icon(Icons.lock, color: Colors.grey.withOpacity(0.4), size: 24),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  finish(context);
                  const DashBoardScreen().launch(context);
                },
                child: Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: appStore.isDarkModeOn ? context.cardColor : const Color(0xff010101),
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0x4df2e4e4), width: 1),
                  ),
                  child: const Icon(Icons.arrow_forward, color: Color(0xfffcfdff), size: 24),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Already have an account?",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: primaryTextStyle(),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                finish(context);
              },
              child: Text(
                "Sign in",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: boldTextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
