import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitqa/main.dart';
import 'package:fitqa/theme/color.dart';
import 'package:fitqa/widget/fitqa_appbar.dart';
import 'package:fitqa/widget/login_button/apple_login_button.dart';
import 'package:fitqa/widget/login_button/facebook_login_button.dart';
import 'package:fitqa/widget/login_button/google_login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null) {
        print("User is currently signed out!");
      } else {
        print("User is Signed in!");
      }
    });

    return MaterialApp(home: Builder(builder: (context) {
      return Scaffold(
          backgroundColor: FColors.appBackground,
          appBar: FAppbar('FitQA'),
          body: Container(
              child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FacebookLoginButton(),
                GoogleLoginButton(
                  onPressed: () {
                    signInWithGoogle().then((user) => openMainScreen(context));
                  },
                ),
                AppleLoginButton(),
                TextButton(
                  onPressed: () {
                    openMainScreen(context);
                  },
                  child: Text("로그인 없이 둘러보기"),
                ),
              ],
            ),
          )));
    }));
  }

  void openMainScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
