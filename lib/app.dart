import 'package:flutter/material.dart';
import 'screens/home.dart';

class BeerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.black),
      home: Home(),
    );
  }
}
