import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xa6595cff), Color(0xffff5858), Color(0xffffa585)],
              stops: [0.2, 0.7, 1],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Container(
//                  height: 200,
//                  width: 200,
//                  decoration: BoxDecoration(
//                    shape: BoxShape.circle,
//                    image: DecorationImage(
//                      image: AssetImage('images/haider.jpg'),
//                      fit: BoxFit.fill,
//                    ),
//                  ),
//                ),d
                CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('images/haider.jpg'),
                ),
                Text("Haider Ali",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 40.0)),
                Text("حيدر علي",
                    style: TextStyle(
                        fontFamily: 'Ruqaa',
                        color: Colors.white,
                        fontSize: 40.0)),
                Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'Solway',
                    color: Colors.white,
                    letterSpacing: 5,
                  ),
                ),
//                Container(
//                  margin: EdgeInsets.symmetric(vertical: 10),
//                  width: 200,
//                  height: 5,
//                  color: Colors.white.withOpacity(0.5),
//                ),
                SizedBox(
                  height: 40,
                  width: 250,
                  child: Divider(
                    color: Color(0xffBBA0B2),
                    thickness: 7,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff5E4355).withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(1, 2))
                      ]),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.phone,
                          color: Color(0xff835D77),
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "+9647812940123",
                          style: TextStyle(
                              color: Color(0xff835D77),
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                    shadowColor: Color(0xff5E4355),
                    elevation: 10,
                    margin:
                        EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color(0xff835D77),
                        size: 30,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "haiderIO@gmail.com",
                          style: TextStyle(
                              color: Color(0xff835D77),
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    )

//                  child: Row(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),

//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.symmetric(
//                            horizontal: 20, vertical: 3),

//                        ),
//                      ),
//                    ],
//                  ),
                    ),
              ],
            ),
          ),
        ));
  }
}
