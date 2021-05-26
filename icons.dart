import 'package:flutter/material.dart';

class IconsX extends StatefulWidget {
  @override
  _IconsXState createState() => _IconsXState();
}

  class _IconsXState extends State<IconsX> {
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: const Text('Icons', style: TextStyle(color:Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
      backgroundColor: Colors.black,
      centerTitle: true,
        actions:
        [
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {}),
          PopupMenuButton<String>(
            color: Colors.grey[900],
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      )
                  ),
                  value: "Settings",
                ),
              ];
            },)
        ]
    ),
  body: new Center(
  ),
  );
  }
  }
