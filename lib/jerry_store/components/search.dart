import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

Widget searchBar(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Row(
                children: [
                  Expanded(
                    child: Container(
                      width: screenWidth * 0.75,
                      height: 48,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Color(0xFFE6E6E6)),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_search-normal.svg',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Search about tom ...',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF969799),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 48,
                    height: 48,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFF03578A),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Color(0xFF0D06081F)),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/ic_filter.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              );
}