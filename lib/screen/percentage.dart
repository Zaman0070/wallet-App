import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PercentageScreen extends StatefulWidget {
  const PercentageScreen({Key? key}) : super(key: key);

  @override
  State<PercentageScreen> createState() => _PercentageScreenState();
}

class _PercentageScreenState extends State<PercentageScreen> {
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
              children: [
                Text('Cashback',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                Container(
                  height: 4.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                   border: Border.all(color: Color(0xff3FDEAE),width: 2)
                  ),
                  child:const Center(child:  Text('Receive',style: TextStyle(color: Color(0xff3FDEAE),fontSize: 13,fontWeight: FontWeight.w600),)),
                ),
              ],
            ),
            SizedBox(height: 1.h,),
            Text('APRIL',style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w600),),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/down.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Fund Transfer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('19%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/shopping.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Online Shopping',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('43%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/food.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Food',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('29%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/fuel.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Fuel',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('13%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 2.5.h,),
            Text('MARCH',style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w600),),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/health.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Health',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('23%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/treval.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Travel',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('25%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/down.png',height: 45,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Fund Transfer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('19%',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


                  ],
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
