import 'package:flutter/material.dart';
import 'package:go_moon/home_page.dart';

void main() {
  runApp(const App());  
}

class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(1, 31, 31, 31)),
      title: 'Go Moon',
      home: HomePage(), 
    );
  }
}