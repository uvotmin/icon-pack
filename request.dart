import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}
  class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: const Text('Request', style: TextStyle(color:Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
      backgroundColor: Colors.black,
      centerTitle: true,
        actions:
        [
          IconButton(icon: Icon(Icons.select_all, color: Colors.white,), onPressed: () {}),
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
