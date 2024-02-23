import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/GitHubButton.dart';
import 'package:buzz/utils/Constants.dart';

class DevScreen extends StatefulWidget {
  final bool? enableAppbar;

  const DevScreen({super.key, this.enableAppbar = false});

  @override
  _DevScreenState createState() => _DevScreenState();
}

class _DevScreenState extends State<DevScreen> {
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
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Icon(Icons.arrow_back, size: 24).paddingAll(16).onTap(() {
              finish(context);
            }).visible(widget.enableAppbar!),
            SizedBox(
              width: context.width(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: boxDecorationDefault(),
                    padding: const EdgeInsets.all(16),
                    child: Image.asset("images/ic_logo.png", height: 100),
                  ),
                  22.height,
                  Text(
                    'This $appName App is Still Under Development',
                    style: boldTextStyle(size: 22),
                    textAlign: TextAlign.center,
                  ),
                  16.height,
                  const DevButton(),
                ],
              ),
            ).paddingAll(16),
          ],
        ),
      ),
    );
  }
}
