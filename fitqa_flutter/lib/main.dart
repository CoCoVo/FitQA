import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitqa/firebase_options.dart';
import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/fitqa_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'src/presentation/views/screens/screen_home.dart';
import 'src/presentation/views/screens/screen_notification.dart';
import 'src/presentation/views/screens/screen_setting.dart';
import 'src/presentation/views/screens/screen_trainer_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is no signed in
          if (!snapshot.hasData) {
            return SignInScreen(
              showAuthActionSwitch: false,
              providerConfigs: const [
                GoogleProviderConfiguration(
                    clientId:
                        '980187310835-42ohg3c99pstoe1p6umgo8avdds1cso7.apps.googleusercontent.com')
              ],
              footerBuilder: (context, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextButton(
                    onPressed: () => {FirebaseAuth.instance.signInAnonymously()},
                    child: Text("로그인 없이 둘러보기"),
                  ),
                );
              },
            );
          }

          User user = snapshot.data!;
          print(user.isAnonymous);
          print(user);

          return MyHomePage(title: 'FitQA');
        });
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
      appBar: FAppbar(widget.title),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          FirebaseAuth.instance.signOut();
          // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenRequest()));
        },
      ),
    ));
  }

  void _onNavigationTapped(int index) {
    setState(() {
      _selectedNavigationIndex = index;
    });
  }
}
