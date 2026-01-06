import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

Widget appBar() {
  return Row(
    children: [
      Image.asset(
        'assets/images/ic_jerry_profile.png',
        width: 48,
        height: 48,
      ),
      SizedBox(width: 8),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, Jerry 👋🏻',
            style: TextStyle(
              color: Color(0xFF1F1F1E),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Text(
            'Which Tom do you want to buy?',
            style: TextStyle(
              color: Color(0xFFA5A6A4),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
      const Spacer(),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF1F1F1E26), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              'assets/images/ic_notification.svg',
              width: 24,
              height: 24,
            ),
          ),

          Positioned(
            top: -4,
            right: -4,
            child: Container(
              width: 18,
              height: 18,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF03578A),
                shape: BoxShape.circle,
              ),
              child: const Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
