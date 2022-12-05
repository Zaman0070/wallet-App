import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online/screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const Login()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logo',
          child: Image.asset('assets/logo.png',height: 150,color: Color(0xff3FDEAE),),
        ),
      ),
    );
  }
}
