import 'package:flutter/material.dart';
import 'package:flutter_basic_splash_screen/dashboard_screen.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //Splash Screen
    return  SplashScreen(
        //Back-Ground color
        backgroundColor: Colors.red,
        seconds: 5,
        navigateAfterSeconds: DashBoardScreen(),
        title: new Text(
          'Welcome To  Android Pillars',
          style: new TextStyle(fontWeight: FontWeight.bold, 
          fontSize: 20.0,
          color: Colors.white),
        ),
        //for setting the network image
        //image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        image: Image.asset(
          'assets/img_logo.png',
          color: Colors.white,
        ),
        styleTextUnderTheLoader: new TextStyle(),
        loadingText: Text('Loading',style: TextStyle(color: Colors.white)),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.white);
  }
}

