import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/main.dart';
import 'package:buzz/screen/RegisterScreen.dart';
import 'package:buzz/screen/SignInScreen.dart';
import 'package:buzz/utils/Widgets.dart';


class BuildScreen extends StatelessWidget {
  const BuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: const Alignment(0.1, 0.4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                image: const AssetImage("images/ic_logo.png"),
                height: 100,
                width: 100,
                color: appStore.isDarkModeOn ? Colors.white : Colors.black,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16, width: 16),
              Text(
                "Your Shopping Destination",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: primaryTextStyle(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.32, width: 16),
              sSAppButton(
                color: appStore.isDarkModeOn ? Colors.black : Colors.white,
                context: context,
                textColor: appStore.isDarkModeOn ? Colors.white : Colors.black,
                title: 'Sign in',
                onPressed: () {
                  finish(context);
                  const SignInScreen().launch(context);
                },
              ),
              const SizedBox(height: 16, width: 16),
              sSAppButton(
                context: context,
                title: 'Register',
                onPressed: () {
                  finish(context);
                  const RegisterScreen().launch(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
