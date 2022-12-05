import 'package:flutter/material.dart';
import 'package:online/screen/home.dart';
import 'package:online/screen/percentage.dart';
import 'package:online/screen/profile.dart';
import 'package:online/screen/wallet.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget currentScreen = const Home();

  int index= 0;
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: (){
          return Future.value(false);
        },
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
           color: const Color(0xff3FDEAE),
            child: PageStorage(
              bucket: _bucket,
              child: currentScreen,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 8.2.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                    onPressed: (){
                      setState(() {
                        index = 0;
                        currentScreen = const Home();
                      });
                    },
                  child: Image.asset('assets/icons/home.png',
                  color: index == 0? Color(0xff3FDEAE) :Colors.grey,
                  ),

                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      index = 1;
                      currentScreen = const WalletScreen();
                    });
                  },
                  child: Image.asset('assets/icons/wallet.png',
                    color: index == 1? Color(0xff3FDEAE) :Colors.grey,
                  ),

                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      index = 2;
                      currentScreen = const PercentageScreen();
                    });
                  },
                  child: Image.asset('assets/icons/per.png',
                    color: index == 2? Color(0xff3FDEAE) :Colors.grey,
                  ),

                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      index = 3;
                      currentScreen = const Profile();
                    });
                  },
                  child: Image.asset('assets/icons/pro.png',
                    color: index == 3? Color(0xff3FDEAE) :Colors.grey,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
