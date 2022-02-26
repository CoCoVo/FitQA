import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/fitqa_icon.dart';
import 'package:flutter/material.dart';

import 'screen/screen_home.dart';
import 'screen/screen_notification.dart';
import 'screen/screen_setting.dart';
import 'screen/screen_trainer_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitQA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FitQA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final List<Widget> _screens = [
    const ScreenHome(),
    const ScreenNotification(),
    const ScreenTrainerList(),
    const ScreenSetting()
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: FColors.appBackground,
      appBar: AppBar(
        backgroundColor: FColors.appBarBackground,
        elevation: 1,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FitqaIcon(),
        ),
        titleSpacing: 3,
        title: Text(widget.title),
        titleTextStyle: TextStyle(color: FColors.textPrimary),
      ),
      body: widget._screens.elementAt(_selectedNavigationIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'notification', icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(label: 'trainer', icon: Icon(Icons.groups)),
          BottomNavigationBarItem(label: 'setting', icon: Icon(Icons.settings))
        ],
        backgroundColor: FColors.appBarBackground,
        currentIndex: _selectedNavigationIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onNavigationTapped,
      ),
    ));
  }

  void _onNavigationTapped(int index) {
    setState(() {
      _selectedNavigationIndex = index;
    });
  }
}
