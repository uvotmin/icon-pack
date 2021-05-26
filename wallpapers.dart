import 'package:flutter/material.dart';
var imgn;
class Wallpapers extends StatefulWidget {
  @override
  _WallpapersState createState() => _WallpapersState();
}

  class _WallpapersState extends State<Wallpapers> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: const Text('Wallpapers', style: TextStyle(color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions:
          [
            IconButton(icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),
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
      body: Container(
          padding: EdgeInsets.all(18.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 18.0,
            mainAxisSpacing: 18.0,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                imgn=1;
                Navigator.of(context).push(_createRoute());
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      'img/img1.jpg',
                      fit: BoxFit.cover,
                    ) ),
              ),
              GestureDetector(
                onTap: () {
                  imgn=2;
                  Navigator.of(context).push(_createRoute());
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      'img/img2.jpg',
                      fit: BoxFit.cover,
                    ) ),
              ),

            ],
          )
    ));
  }
  }

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ImageView(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class ImageView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Wallpaper $imgn', style: TextStyle(color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),
            backgroundColor: Colors.transparent,
            centerTitle: true,
        ),
      body: Center(
        child: Image.asset('img/img$imgn.jpg'),
      ),
        );
  }
}
