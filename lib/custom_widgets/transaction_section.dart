import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({
    super.key,
    required this.title,
    required this.titleBnt,
    required this.transactionDate,
    required this.brandName,
    required this.brandImage,
    required this.transactionTime,
    required this.status,
    required this.price,
    required this.camera, required this.color,
  });

  final String title;
  final String titleBnt;
  final String transactionDate;
  final String brandName;
  final String brandImage;
  final String transactionTime;
  final String status;
  final double price;
  final String camera;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                               ),
               ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    titleBnt,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Color(0xFF0063F7),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
        ),
        Container(
          width: 380,
          height: 120,
          padding: const EdgeInsets.all(13),
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
              )
            ],
          ),
          child: Column(
            children: [
               SizedBox(
                width: 329,
                child: Text(
                  transactionDate,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListTile(
                title:  Text(
                  brandName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                leading: Container(
                  width: 30.97,
                  height: 30.97,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Image(
                    image: AssetImage(brandImage),
                    width: 32,
                    height: 32,
                    fit: BoxFit.fill,
                  ),
                ),
                subtitle: Row(
                  children: [
                     Text(
                      transactionTime,
                      style: const TextStyle(
                        color: Color(0xFF8F90A6),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 6,),
                    Container(
                      width: 58,
                      height: 16,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: ShapeDecoration(
                        color:  Color(color),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 6),
                           Text(status,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                     SizedBox(
                      height: 32,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Text( NumberFormat.simpleCurrency(locale: 'en-US').format(price),
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image(
                              image: AssetImage(camera),
                              width: 32,
                              height: 32,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
