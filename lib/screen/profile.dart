import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
           const Text('Limits',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 1.h,),
            const Text('Set limits every month to save money',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
           SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 22.h,
                  width: 22.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE1E9FC),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Image.asset('assets/icons/health.png',height: 35,),
                        SizedBox(height: 1.h,),
                        Text('Health',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                        SizedBox(height: 1.h,),
                        Text('AED 780/1,500',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                        SizedBox(height: 2.h,),
                        Container(
                          height: 1.h,
                          width: 18.h,
                          decoration: BoxDecoration(
                            color: Color(0xff99BEFF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 1.h,
                                width: 11.h,
                                decoration: BoxDecoration(
                                  color: Color(0xff3FDEAE),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 22.h,
                  width: 22.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE1E9FC),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Image.asset('assets/icons/down.png',height: 35,),
                        SizedBox(height: 1.h,),
                        Text('Fund Transfer',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                        SizedBox(height: 1.h,),
                        Text('AED 250/1,500',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                        SizedBox(height: 2.h,),
                        Container(
                          height: 1.h,
                          width: 18.h,
                          decoration: BoxDecoration(
                            color: Color(0xff99BEFF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 1.h,
                                width: 9.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff3FDEAE),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 22.h,
                  width: 22.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE1E9FC),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Image.asset('assets/icons/food.png',height: 35,),
                        SizedBox(height: 1.h,),
                        Text('Food',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                        SizedBox(height: 1.h,),
                        Text('AED 780/1,500',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                        SizedBox(height: 2.h,),
                        Container(
                          height: 1.h,
                          width: 18.h,
                          decoration: BoxDecoration(
                            color: Color(0xff99BEFF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 1.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff3FDEAE),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 22.h,
                  width: 22.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE1E9FC),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Image.asset('assets/icons/shopping.png',height: 35,),
                        SizedBox(height: 1.h,),
                        Text('Online Shopping',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                        SizedBox(height: 1.h,),
                        Text('AED 500/1,500',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                        SizedBox(height: 2.h,),
                        Container(
                          height: 1.h,
                          width: 18.h,
                          decoration: BoxDecoration(
                            color: Color(0xff99BEFF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 1.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff3FDEAE),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
