import 'package:flutter/material.dart';
import 'package:tomstore/jerry_store/components/app_bar.dart';
import 'package:tomstore/jerry_store/components/search.dart';

class JerryStoreScreen extends StatelessWidget {
  const JerryStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(),
              const SizedBox(height: 16),
              searchBar(context),
              const SizedBox(height: 24),

              Stack(
                children: [
                  Container(
                    width: size.width * 0.91,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF03446A), Color(0xFF0685D0)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Buy 1 Tom and get 2 for free',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Adopt Tom! (Free Fail-Free Guarantee)',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset('assets/images/im_tom_with_money.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
