import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/main.dart';
import 'package:buzz/screen/DashBoardScreen.dart';
import 'package:buzz/screen/ForgotPasswordScreen.dart';
import 'package:buzz/screen/RegisterScreen.dart';
import 'package:buzz/utils/Widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
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
            const SizedBox(height: 32, width: 16),
            Text("Sign In", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
            const SizedBox(height: 8),
            Text("Please sign in continue app", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: primaryTextStyle()),
            const SizedBox(height: 32),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 14),
              decoration: sSInputDecoration(
                context: context,
                icon: Icon(Icons.email, color: Colors.grey.withOpacity(0.4), size: 24),
                name: 'Email address',
              ),
            ),
            const SizedBox(height: 16, width: 16),
            TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontSize: 14),
              decoration: sSInputDecoration(
                context: context,
                icon: Icon(Icons.lock, color: Colors.grey.withOpacity(0.4), size: 24),
                name: 'Password',
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text('Forgot Password?', style: boldTextStyle(size: 16, color: Colors.red)),
                onPressed: () {
                  const ForgotPasswordScreen().launch(context);
                },
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  finish(context);
                  const DashBoardScreen().launch(context);
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
                  child: const Icon(Icons.arrow_forward, color: Color(0xfffcfdff), size: 24),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text("Don't have an account?", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: primaryTextStyle()),
            TextButton(
              onPressed: () {
                const RegisterScreen().launch(context);
              },
              child: Text("Register", style: boldTextStyle(color: Colors.red)),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: const Alignment(0.2, 0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.2)),
                    child: const Image(image: AssetImage("images/ic_facebook.png"), height: 25, width: 25, fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.2)),
                    child: const Image(image: AssetImage("images/ic_google.png"), height: 25, width: 25, fit: BoxFit.contain),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
