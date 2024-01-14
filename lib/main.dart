import 'package:flutter/material.dart';
import 'package:weather_app/Screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'weather_app',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 1
        )
      ),
      home:const HomeScreen(),

    ); 
  }
}
