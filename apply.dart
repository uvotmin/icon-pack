import 'package:flutter/material.dart';

class Apply extends StatefulWidget {
  @override
  _ApplyState createState() => _ApplyState();
}
  class _ApplyState extends State<Apply> {
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: const Text('Apply', style: TextStyle(color:Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
      backgroundColor: Colors.black,
      centerTitle: true,
        actions:
        [
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
