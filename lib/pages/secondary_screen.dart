import 'package:design_challenge/custom_widgets/brand_listtile_tiem.dart';
import 'package:design_challenge/custom_widgets/transaction_section.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/screen_header_section.dart';

class SecondaryScreen extends StatefulWidget {
  const SecondaryScreen({super.key});

  @override
  State<SecondaryScreen> createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenHeaderSection(headerImage: 'images/ff.png',),
              const TitleBar(title: 'Recent Transactions', titleBnt: 'See All'),
              const TransactionsSection(
                transactionDate: 'October 8th, 2022',
                brandName: 'LONGOS',
                brandImage: 'images/l.png',
                transactionTime: '5:23 PM',
                status: 'Grocery',
                price: -80.85,
                camera: 'images/ca.png',
                color: 0xFFFF8800,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 370,
                  height: 360,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x14202028),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: 313,
                        height: 20,
                        child: Text('October 7th, 2022',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6
                      ),
                      BrandListTileItem(
                        brandName: 'NIKE',
                        brandImage: 'images/nike.png',
                        transactionTime: '6:15 PM  ',
                        status: 'Shopping',
                        price: - 110.00,
                        camera: 'images/ca.png',
                        color: 0xFFFF8800,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      BrandListTileItem(
                        brandName: 'AIRBNB BOOKING',
                        brandImage: 'images/Airbnb.png',
                        transactionTime: '12:44 PM ',
                        status: 'Travel',
                        price: - 854.00,
                        camera: 'images/ca.png',
                        color: 0xFF0063F7,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      BrandListTileItem(
                        brandName: 'NIKE',
                        brandImage: 'images/nike.png',
                        transactionTime: '6:15 PM  ',
                        status: 'Shopping',
                        price: - 110.00,
                        camera: 'images/ca.png',
                        color: 0xFFFF8800,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      BrandListTileItem(
                        brandName:'UBER EATS',
                        brandImage:'images/uber.png',
                        transactionTime:'1:45PM',
                        status:'Food&Drinks',
                        price: - 25.60,
                        camera:'images/ca.png',
                        color: 0xFF5B8DEF,
                      ),

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
