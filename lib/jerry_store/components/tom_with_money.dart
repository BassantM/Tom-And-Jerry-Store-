import 'package:flutter/material.dart';

Widget tomWithMoney(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final isWeb = size.width > 600;
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        width: size.width - 32,
        height: 120,
        padding: EdgeInsets.only(
          left: 16,
          top: 14,
          bottom: 14,
          right: size.width * 0.4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xFF03446A), Color(0xFF0685D0)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Buy 1 Tom and get 2 for free',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Adopt Tom! (Free Fail-Free Guarantee)',
              maxLines: 2,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        right: isWeb ? size.width * -0.06 : size.width * -0.07,
        top: isWeb ? size.height * -0.09 : size.height * -0.11,
        bottom: isWeb ? size.height * -0.13 : size.height * -0.16,
        child: Image.asset(
          'assets/images/im_tom_with_money.png',
          width: isWeb ? size.width * 0.25 : size.width * 0.55,
          height: isWeb ? size.height * 0.2 : size.height * 0.25,
          fit: BoxFit.contain,
        ),
      ),
    ],
  );
}
