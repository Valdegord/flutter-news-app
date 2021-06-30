import 'package:flutter/material.dart';
import 'package:movie_app/presentation/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 

   static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.green,
    accentColor: Colors.purple[300],
    scaffoldBackgroundColor: Colors.grey[100],
    colorScheme: ColorScheme.light(
      primary: Colors.green,
      secondary: Colors.green[100] as Color,
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
    //ThemeData(
        
      //   primarySwatch: Colors.blue,
      // ),
      home: SafeArea(child: MainScreen()),
    );
  }
}
 