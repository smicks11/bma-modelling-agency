// ignore_for_file: avoid_print
import 'package:bma_app/views/Auth/sign_up.dart';
import 'package:bma_app/views/Home/home.dart';
// import 'package:bma_app/views/OnBoarding/on_boarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CheckAuthState extends StatelessWidget {
  const CheckAuthState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, snapshot) {
        if (snapshot.hasData && snapshot != null) {
          print("Response of snapshot.data is ${snapshot.data}");
          return const Home();
        } else {
          return const SignUpScreeen();
        }
      },
    );
  }
}
