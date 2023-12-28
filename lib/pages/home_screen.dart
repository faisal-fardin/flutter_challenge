import 'package:design_challenge/custom_widgets/suggested_section.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/screen_header_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenHeaderSection(),
              const SuggestedSection(),
              Padding(
                padding:  const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'All Transactions',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      TextButton(onPressed: (){}, child: const Text(
                        'See All',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF0063F7),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


