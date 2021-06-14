import 'package:flutter/material.dart';
import 'package:kuburazizam/home.dart';
import 'package:kuburazizam/icons.dart';
import 'package:kuburazizam/wallpapers.dart';
import 'package:kuburazizam/apply.dart';
import 'package:kuburazizam/request.dart';

var h="Icon Pack Name";
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
    switch (index) {
      case 0:
       h = "Icon Pack Name";
        break;
      case 1:
        h = "Icons";
        break;
      case 2:
        h = "Wallpapers";
        break;
      case 3:
        h = "Apply";
        break;
      case 4:
        h = "Request";
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('$h', style: TextStyle(color:Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions:
        [
          PopupMenuButton<MenuItem>(
            color: Colors.grey[900],
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemsFirst.map(buildItem).toList(),
            ],
          ),
        ],
      ),
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
class MenuItem {
  final String text;

  const MenuItem({
    this.text,
  });
}

class MenuItems {
  static const List<MenuItem> itemsFirst = [
    itemSettings,
    itemContact,
  ];
  static const itemSettings = MenuItem(
    text: "Settings",);
  static const itemContact=MenuItem(
    text: 'Contact us',
  );
}

PopupMenuItem<MenuItem> buildItem(MenuItem item) =>
    PopupMenuItem<MenuItem>(
      value: item,
      child: Row(
        children: [
          const SizedBox(width: 12),
          Text(item.text),
        ],
      ),
    );
void onSelected(BuildContext context, MenuItem item) {
  switch (item) {
    case MenuItems.itemSettings:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>Settings()),
      );
      break;
  }
}

