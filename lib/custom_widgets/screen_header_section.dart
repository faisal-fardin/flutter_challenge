
import 'package:flutter/material.dart';

class ScreenHeaderSection extends StatelessWidget {

  const ScreenHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 393,
        height: 469,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.42, -0.91),
            end: Alignment(-0.42, 0.91),
            colors: [Color(0xFF4263EB), Color(0xFFC7D1F8)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              SizedBox(
                width: 340,
                height: 55,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 18,),
                  decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          Icons.search_sharp,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: const TextStyle(fontSize: 16, color: Color(0xFFC1BDB9)),
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 370.32,
                    height: 228.55,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Theme.png'),
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 190.55,
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
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              const AddAndSendButton()
            ],
          ),
        )
    );
  }
}


class AddAndSendButton extends StatelessWidget {
  const AddAndSendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 156.50,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: const Color(0xFF0063F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 22,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/send.png',),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const SizedBox(
                    child: Text(
                      'Send Money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 30,),
        Container(
          width: 156.50,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: const Color(0xFF0063F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 22,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/add.png',),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const SizedBox(
                    child: Text(
                      'Add Money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
