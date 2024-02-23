import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/main.dart';
import 'package:buzz/screen/ResetScreen.dart';


class VerifyNumberScreen extends StatefulWidget {
  const VerifyNumberScreen({super.key});

  @override
  State<VerifyNumberScreen> createState() => _VerifyNumberScreenState();
}

class _VerifyNumberScreenState extends State<VerifyNumberScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Color(0x00000000), width: 1)),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 32, width: MediaQuery.of(context).size.width),
            Text("Verify Mobile Number", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle(size: 20)),
            const SizedBox(height: 16, width: 16),
            Text("Enter the otp code sent  to you", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: secondaryTextStyle()),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        count = index;
                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 16, right: 16),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: index != count ? const Color(0x1f000000) : context.iconColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 16),
            const Text(
              "Resend in 00.30",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 16, color: Color(0xffeb0b0b)),
            ),
            const SizedBox(height: 32, width: 16),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  const ResetScreen().launch(context);
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
                  child: const Icon(Icons.arrow_forward, color: Color(0xffffffff), size: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
