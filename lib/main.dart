import 'package:flutter/material.dart';
import 'package:multi_screen_utility_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(35, 36, 42, 1),
        fontFamily: 'Montserrat',
      ),
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
