import 'package:design_challenge/custom_widgets/brand_listtile_tiem.dart';
import 'package:design_challenge/custom_widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 393,
                  height: 800,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.42, -0.91),
                      colors: [Color(0xFF4263EB), Color(0xFFC7D1F8)],
                    ),
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                            width: 345,
                            height: 32,
                            child: Text(
                              'Transactions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 30),
                            Column(
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.72, -0.70),
                                      end: Alignment(-0.72, 0.7),
                                      colors: [Colors.white, Color(0xFFFFE5A3)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 10,
                                        offset: Offset(1, 1),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: const Image(
                                    image: AssetImage('images/3.png'),
                                    width: 32,
                                    height: 32,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Insights',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24),
                            Column(
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.72, -0.70),
                                      end: Alignment(-0.72, 0.7),
                                      colors: [Colors.white, Color(0xFFFCEAFF)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 10,
                                        offset: Offset(1, 1),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: const Image(
                                    image: AssetImage('images/2.png'),
                                    width: 32,
                                    height: 32,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Receipts',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24),
                            Column(
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.72, -0.70),
                                      end: Alignment(-0.72, 0.7),
                                      colors: [Colors.white, Color(0xFFE2FFF9)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 10,
                                        offset: Offset(1, 1),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: const Image(
                                    image: AssetImage('images/1.png'),
                                    width: 32,
                                    height: 32,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Download',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      left: 0,
                      top: 246,
                      child: Container(
                        width: 393,
                        height: 658,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 30,),
                                Expanded(
                                  child: Container(
                                    height: 60,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    child: TextFormField(
                                      style: const TextStyle(color: Colors.black,fontSize: 16),
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          prefixIcon: const Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Icon(
                                              Icons.search_sharp,
                                              size: 30,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          fillColor: const Color(0xFFF1F4FF),
                                          filled: true,
                                          hintText: 'Search Transactions',
                                          hintStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF949494)),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            borderSide: BorderSide.none,
                                          )),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/34.png'),
                                    )
                                  ),
                                ),
                                const SizedBox(width: 6,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/33.png'),
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                width: MediaQuery.of(context).size.width,
                                height: 350,
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
                                      height: 17,
                                      child: Text('October 7th, 2022',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                      height: 10,
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
                                      height: 10,
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
                                      height: 10,
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
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
