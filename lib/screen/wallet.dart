import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation:  0,
        title: Row(
          children: [
            Image.asset('assets/img.png',height: 45,),
            SizedBox(width: 2.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text('Total Balance',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                ),
                Text('AED 4,830.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),

          ],
        ),
        actions: [
          Icon(Icons.search,color: Colors.black,size: 32,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/icons/not.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Text('Wallet',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
               CircleAvatar(
                 radius: 18,
                 backgroundColor: Color(0xffE1E9FC),
                 child: Icon(Icons.add,color: Colors.black,),
               )
              ],
            ),
            SizedBox(height: 2.h,),
            Container(
              height: 12.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffE1E9FC),
              ),
              child: Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3FDEAE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text('Apartment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,letterSpacing: 0.8),),
                          Text('AED 4500/12,000',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white,letterSpacing: 0.8),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Container(
              height: 12.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffE1E9FC),
              ),
              child: Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3FDEAE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text('Shopping',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,letterSpacing: 0.8),),
                          Text('AED 850/12,000',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white,letterSpacing: 0.8),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Container(
              height: 12.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffE1E9FC),
              ),
              child: Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: Color(0xff3FDEAE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text('Holiday',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,letterSpacing: 0.8),),
                          Text('AED 3,000/8,000',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white,letterSpacing: 0.8),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Container(
              height: 10.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child:const Center(child: Text('New Phone - Achieved',style: TextStyle(fontSize: 18,color: Colors.white),))
            ),
          ],
        ),
      ),
    );
  }
}
