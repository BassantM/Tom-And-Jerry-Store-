import 'package:flutter/material.dart';
import 'package:tomstore/jerry_store/components/app_bar.dart';
import 'package:tomstore/jerry_store/components/search.dart';
import 'package:tomstore/jerry_store/components/tom_header.dart';
import 'package:tomstore/jerry_store/components/tom_with_money.dart';

class JerryStoreScreen extends StatelessWidget {
  const JerryStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              tomWithMoney(context),
              const SizedBox(height: 24),
              tomHeader(),
              const SizedBox(height: 32),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  child: Column(
                    children: [
                      Text(
                        'Sport Tom',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1F1F1E),
                      ),
                    ),
                    Text(
                      'He runs 1 meter... trips over his boot.',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff969799),
                      ),
                    ),
                  ],)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
