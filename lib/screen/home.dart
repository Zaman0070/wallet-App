import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cards',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                Icon(Icons.arrow_forward),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 22.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: Color(0xff3FDEAE),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/circile.png',height: 22,),
                                Image.asset('assets/icons/card.png',height: 26,)
                              ],
                            ),
                            SizedBox(height: 3.h,),
                           const Text('AED 285.00',style: TextStyle(fontSize: 18,color: Colors.white),),
                            SizedBox(height: 1.h,),
                            const Text('Education',style: TextStyle(fontSize: 14,color: Colors.white),),
                            SizedBox(height: 2.h,),
                            const Text('CARD NO.',style: TextStyle(fontSize: 11,color: Colors.white),),
                            SizedBox(height: 0.5.h,),
                            const Text('XXXX 7251',style: TextStyle(fontSize: 14,color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 22.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/visa.png',height: 28,),
                                Image.asset('assets/icons/card.png',height: 26,)
                              ],
                            ),
                            SizedBox(height: 3.h,),
                            const Text('AED 285.00',style: TextStyle(fontSize: 18,color: Colors.black),),
                            SizedBox(height: 1.h,),
                            const Text('Education',style: TextStyle(fontSize: 14,color: Colors.black),),
                            SizedBox(height: 2.h,),
                            const Text('CARD NO.',style: TextStyle(fontSize: 11,color: Colors.black),),
                            SizedBox(height: 0.5.h,),
                            const Text('XXXX 7251',style: TextStyle(fontSize: 14,color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Text('Last Transaction',
                style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/electronic.png',height: 40,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Electronic Product',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('10 Apr, 08:37',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
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
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/down.png',height: 40,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('From:7381****1291',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        Text('09 Apr, 08:37',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('-AED',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff3FDEAE),),),
                    const Text('187.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff3FDEAE),),),


                  ],
                ),

              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/resturant.png',height: 40,),
                    SizedBox(width: 2.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('Restaurants',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('10 Apr, 08:37',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
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
