import 'package:flutter/material.dart';

class SuggestedSection extends StatelessWidget {
  const SuggestedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 209,
            height: 24,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Suggested for you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 14,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF4161E6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                const SizedBox(width: 8),
                Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFACBBF3),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFACBBF3),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              width: 297,
              height: 144,
              padding: const EdgeInsets.only(
                  top: 4, left: 4, right: 12, bottom: 4),
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
              child: Row(
                children: [
                  Container(
                    width: 128.57,
                    height: 93.52,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Girl.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 154,
                            child: Text(
                              'Bless Calendar will save you time and money!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 153,
                            child: Text(
                              'Easily budget like a pro with Bless! Automate your bill payments and save time by skipping those extra clicks.',
                              style: TextStyle(
                                color: Color(0xFF8F90A6),
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              width: 85,
              height: 144,
              padding: const EdgeInsets.only(
                  top: 4, left: 12, right: 12),
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
              child: Container(
                width: 112,
                height: 100.63,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/interior.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}

