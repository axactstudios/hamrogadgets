import 'package:flutter/material.dart';
import 'package:hamrogadgets/BannerModel/full_length_banner_notifier.dart';
import 'package:hamrogadgets/Screens/home_screen.dart';
import 'package:hamrogadgets/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(context),
      title: 'Hamro Gadgets',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FullLengthBannerAdNotifier(),
          ),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
