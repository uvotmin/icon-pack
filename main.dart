import 'package:flutter/material.dart';
import 'package:kuburazizam/home.dart';
import 'package:kuburazizam/icons.dart';
import 'package:kuburazizam/wallpapers.dart';
import 'package:kuburazizam/apply.dart';
import 'package:kuburazizam/request.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar (),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    IconsX(),
    Wallpapers(),
    Apply(),
    Request(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                ),
              title: Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  )),),
            BottomNavigationBarItem(
                icon: Icon(Icons.square_foot_sharp),
                title: Text(
                    'Icons',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                    )),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallpaper),
              title: Text(
                  'Wallpapers',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  )),            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_up,
                  ),
              title: Text(
                  'Apply',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  )),            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feedback),
              title: Text(
                  'Request',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  )),            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor : Colors.greenAccent,
          unselectedItemColor: Colors.white,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 13
      ),
    );
  }
}  