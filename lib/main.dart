import 'package:flutter/material.dart';
import 'package:portifolio_web/ThemeSwitcher.dart';
import 'package:portifolio_web/config/themes.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Abnner(),
    );
  }
}

class Abnner extends StatelessWidget {
  const Abnner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abnner Davi',
      theme: ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
