import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_provider_template/core/constants/assets.dart';
import 'package:mvvm_provider_template/core/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  late Timer timer;
  bool isUserLoggedIn = false;
  int? onBoardCount;

  @override
  void initState() {
    if (_firebaseAuth.currentUser != null) {
      isUserLoggedIn = true;
    }

    timer = Timer(
      const Duration(seconds: 10),
      () {
        if (isUserLoggedIn) {
        } else {}
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kWhite, kDarkWhite])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset(logo),
          ),
        ),
      ),
    );
  }
}
