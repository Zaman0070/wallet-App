import 'package:flutter/material.dart';
import 'package:online/screen/personal.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

var passwordTextController  = TextEditingController();

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password',style: TextStyle(color: Colors.grey[700],fontSize: 18),),
        SizedBox(height: 2.h,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xffE1E9FC),
          ),
          height: 50.0,
          child:  TextFormField(
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Password';
              }
            },

            controller: passwordTextController,
            obscureText: true,
            style:const TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration:const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff376AED),
              ),
              hintText: 'Password',
              //  hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

Widget _buildLoginBtn() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 25.0),
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15.0),

        backgroundColor: const Color(0xff3FDEAE),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
      ),
      onPressed: (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>const PersonalInformation()), (route) => false);
      },
      child: const Text(
        'Continue',
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'OpenSans',
        ),
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8.h,),
              Center(child: Image.asset('assets/img.png',height: 12.h,)),
              SizedBox(height: 3.h,),
              Text('Welcome Lisa',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 1.h,),
              Text('Sign With Your Password',
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600
                ),
              ),
              SizedBox(height: 3.h,),
              _buildPasswordTF(),
              SizedBox(height: 2.h,),
             const Align(
                alignment: Alignment.topRight,
                child: Text('Forget Password',
                style: TextStyle(
                  fontSize: 15
                ),
                ),
              ),
              SizedBox(height: 1.h,),
              _buildLoginBtn(),
              SizedBox(height: 4.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1,
                      width: 50,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text('Or',style: TextStyle(fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1,
                      width: 50,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                  height: 45,
                width: 180,
                decoration: BoxDecoration(
                  color: Color(0xff0D1238),
                  borderRadius: BorderRadius.circular(2),
                ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.qr_code_scanner_outlined,color: Colors.white,),
                        SizedBox(width: 2.w,),
                        Text('Face ID',style: TextStyle(fontSize: 18,color: Colors.white),)
                      ],
                    ),
              ),
                  Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff0D1238),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fingerprint,color: Colors.white,),
                        SizedBox(width: 2.w,),
                        Text('Touch ID',style: TextStyle(fontSize: 18,color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),


            ],
          ),
        ),
      )
    )
    );
  }
}
