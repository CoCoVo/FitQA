import 'package:flutter/material.dart';

import 'src/presentation/views/screens/screen_home.dart';
import 'src/presentation/views/screens/screen_notification.dart';
import 'src/presentation/views/screens/screen_setting.dart';
import 'src/presentation/views/screens/screen_trainer_list.dart';

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
    ScreenHome(),
    ScreenNotification(),
    ScreenTrainerList(),
    ScreenSetting()
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: widget._screens.elementAt(_selectedNavigationIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'notification', icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(label: 'trainer', icon: Icon(Icons.groups)),
          BottomNavigationBarItem(label: 'setting', icon: Icon(Icons.settings))
        ],
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
