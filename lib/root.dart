import 'package:digitalgita/about.dart';
import 'package:digitalgita/chapters.dart';
import 'package:digitalgita/constants.dart';
import 'package:digitalgita/slok.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[Slok(), Chapters(), AboutUs()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor1,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backColor1,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined), label: "Chapters"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded), label: "About Us"),
        ],
      ),
    );
  }
}
