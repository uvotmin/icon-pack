import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Kuburazizam', style: TextStyle(color:Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
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
         child: Column(

           children: <Widget>[
             Container(padding: EdgeInsets.only(bottom: 30.0),
             child: new Image.asset(
                 'img/bg.png',
               width: 400,
               height: 200,
             ),
             ),
             
             Container(
               child: new Text(
                 '2000',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 53,
                     fontFamily: 'Poppins',
               ),
               ),
             ),

             Container(
               child: new Text(
                 'Beautiful icons',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                     fontFamily: 'Poppins'
                 ),
               ),
             ),

             Container(
               padding: EdgeInsets.only(top: 30.0),
               child: new Text(
                 '150',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 53,
                   fontFamily: 'Poppins'
                 ),
               ),
             ),

             Container(
               padding: EdgeInsets.only(bottom: 30.0),

               child: new Text(
                 'Complementary wallpapers',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                     fontFamily: 'Poppins'
                 ),
               ),
             ),
             
             Container(
               height: 50,
               width: 250,
               child: new RaisedButton(
                 color: Colors.greenAccent,
                   onPressed: (){},
                   child: Text(
                     'Apply to your launcher',
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Poppins'
                     ),
                   ),
               )
             ),
           ],
             ),
    ),
          );
  }
}
