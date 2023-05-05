import 'package:app10/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Main_Sceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
theme: ThemeData(

  splashColor: Colors.transparent
  
),
      debugShowCheckedModeBanner: false,
       
      home: SplashScreen(),
    );
  }
}