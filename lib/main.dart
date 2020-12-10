import 'package:flutter/material.dart';
import 'package:hamrogadgets/Screens/home_screen.dart';
import 'package:hamrogadgets/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(context),
      title: 'Hamro Gadgets',
      home: HomeScreen(),
    );
  }
}
