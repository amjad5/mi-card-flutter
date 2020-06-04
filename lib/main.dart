import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int expertLevel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,

          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                expertLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.blueGrey.shade900,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/Untitled.png'),
                ),
                Text(
                  'Amjad Hussain',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text('FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.teal.shade100,
                      fontSize: 22.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      '+92 300 000 0000',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      'amjad@amjad.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.beenhere),
                    title: Text(
                      'Expert Level: $expertLevel',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
