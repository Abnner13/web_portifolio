import 'package:flutter/material.dart';
import 'package:portifolio_web/ThemeSwitcher.dart';
import 'package:portifolio_web/config/assets.dart';
import 'package:portifolio_web/tabsPages/AboutTab.dart';
import 'package:portifolio_web/tabsPages/BlogTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> tabWidges = <Widget>[
    AboutTab(),
    BlogTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.lightbulb, color: Colors.yellow):Image.asset(Assets.moon,height: 20,width: 20,),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(child: tabWidges.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: 'Blog',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.mobile_screen_share),
          //   label: 'Projects',
          // )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
