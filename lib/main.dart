import 'package:flutter/material.dart';
import 'package:online/screen/splash.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) =>
            MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Talking2Allah LMS',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const  SplashScreen(),
            ));
  }
}
