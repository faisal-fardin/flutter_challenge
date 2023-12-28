import 'package:design_challenge/pages/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({super.key});

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {

  int _selectedScreenIndex = 0;

  final List<Widget> _screen =[
    const HomeScreen(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedScreenIndex],
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(top: 30.0),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          showUnselectedLabels: true,
          selectedItemColor: const Color(0xFF0063F7),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
          unselectedLabelStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),
          onTap: (int index){
            _selectedScreenIndex = index;

          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.attach_money,),label: 'Earnings'),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_sharp,),label: 'Action'),
            BottomNavigationBarItem(icon: Icon(Icons.messenger_outline,),label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline,),label: 'Profile'),
          ],
        ),
      ),
    );
  }
}