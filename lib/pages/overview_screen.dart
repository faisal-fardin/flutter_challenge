import 'package:design_challenge/custom_widgets/menu_item.dart';
import 'package:design_challenge/utlis/const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  final String currencySymbol = '৳';
  DateTime selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 340,
                      height: 55,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
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
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Color(0xFFC1BDB9)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 90,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Cards',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF4363EB),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Overview',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor: const Color(0xFF4363EB),
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: _selectDate,
                            icon: const Icon(Icons.arrow_drop_down),
                            label: Text(getFormattedDate(selectedDate)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),

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
                    Container(
                      width: 18,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF4161E6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),

                    const SizedBox(width: 4),

                  ],
                ),
                Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFACBBF3),
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: const ListTile(
                    leading: CircularProgressIndicator(
                      color: Color(0xFF0063F7),
                      backgroundColor: Colors.white,
                    ),
                    title: Text(
                      'Monthy budget',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      '\$890.1 from \$2,500',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MenuItem(),
                          SizedBox(width: 15,),
                          MenuItem(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  void _selectDate() async {
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 90)),
        lastDate: DateTime.now());
    setState(() {
      if (date != null) {
        selectedDate = date;
      }
    });
  }
}

String getFormattedDate(DateTime dt, {String pattern = 'dd/MM/yyyy'}) {
  return DateFormat(pattern).format(dt);
}
