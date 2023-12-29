import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BrandListTileItem extends StatelessWidget {
  const BrandListTileItem({
    super.key,
    required this.brandName,
    required this.brandImage,
    required this.transactionTime,
    required this.status,
    required this.price,
    required this.camera,
    required this.color,
  });

  final String brandName;
  final String brandImage;
  final String transactionTime;
  final String status;
  final double price;
  final String camera;
  final int color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        brandName,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
      leading: Container(
        width: 30,
        height: 30,
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
              fontSize: 9,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Container(
            width: 76,
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
                 Text(
                  status,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        Spacer(),
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
                    width: 26,
                    height: 26,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
