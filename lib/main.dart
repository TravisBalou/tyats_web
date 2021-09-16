import 'package:flutter/material.dart';
import 'package:tyats_web/ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travis Yatsko',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(title: 'Travis Yatsko'),
    );
  }
}
