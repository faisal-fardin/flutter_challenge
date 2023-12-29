
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.images, required this.price, required this.name, required this.color, required this.textColor});

  final String images;
  final String price;
  final String name;
  final int color;
  final int textColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: ShapeDecoration(
        color:  Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image(
                    image: AssetImage(images),
                    width: 30,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
           Text( price,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
           Text(name,
            style:  TextStyle(
              color: Color(textColor),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
