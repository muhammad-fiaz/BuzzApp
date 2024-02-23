import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BestODWidget extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? amount;

  const BestODWidget({super.key, this.img, this.title, this.subtitle, this.amount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width() / 2 - 24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Column(
              children: [
                const SizedBox(height: 1),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: context.cardColor,
                    ),
                    child: const Icon(Icons.favorite, color: Colors.red, size: 18),
                  ),
                ),
                const SizedBox(height: 16),
                Image.asset(img!, height: 100, width: 150, fit: BoxFit.cover),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(subtitle!, style: secondaryTextStyle(size: 12)),
          const SizedBox(height: 4),
          SizedBox(
            width: context.width() / 2 - 12,
            child: Text(title!, maxLines: 2, style: boldTextStyle(size: 14)),
          ),
          const SizedBox(height: 4),
          Text(amount!, style: secondaryTextStyle(size: 12)),
        ],
      ),
    );
  }
}
