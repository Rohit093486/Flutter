import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          ShapeOfView(
            elevation: 4,
            height: 300,
            shape: DiagonalShape(
                position: DiagonalPosition.Bottom,
                direction: DiagonalDirection.Left,
                angle: DiagonalAngle.deg(angle: 20)),
            child: Container(
              color: Colors.black,
            ),
          ),
          Positioned(
              width: 350.0,
              top: 150,
              child: Column(
                children: <Widget>[
                  Container(
                      width: 150.0,
                      height: 150.0,

                      decoration: BoxDecoration(
                          // color: Colors.red,

                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(Color.fromRGBO(255, 255, 255, .1), BlendMode.srcATop),
                              image: NetworkImage(
                                  'https://thumbs.dreamstime.com/b/user-men-icon-guy-s-profile-stylish-young-man-business-suit-tie-male-web-sign-flat-art-object-black-white-silhouette-173159938.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 9.9, color: Colors.orange)
                          ])),
                ],
              ))
        ],
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
        child: Column(
          children: [
            const Text(
              'Rohit Parihar',
              style: TextStyle(letterSpacing: 2, fontSize: 30),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.do_not_disturb_on_total_silence_sharp,
                    color: Colors.green,
                  ),
                  const Text(
                    'Available for freelance',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Chip(
                label: const Text('React'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Chip(
                label: const Text('Angular'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Chip(
                label: const Text('Vue'),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(40, 0, 0, 0),

        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(13),
              child: Column(
                children: [
                  Text(
                    '3333',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '100',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '253',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Work',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          height: 30.0,
          width: 95.0,
          child: Material(
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.redAccent,
            color: Colors.green,
            elevation: 7.0,
            child: GestureDetector(
              child: Center(
                child: Text(
                  'HIRE',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                ),
              ),
            ),
          ))
    ]));
  }
}
