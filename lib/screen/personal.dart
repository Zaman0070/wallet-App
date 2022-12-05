import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:online/screen/home.dart';
import 'package:online/screen/main_screen.dart';
import 'package:sizer/sizer.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {

String country = '';
String countryName ='';

var nameController = TextEditingController();
var emailController = TextEditingController();
var passwordTextController  = TextEditingController();

Widget _buildPasswordTF() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Password',style: TextStyle(color: Colors.grey[700],fontSize: 16),),
      SizedBox(height: 1.5.h,),
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


  Widget _buildCountry() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Country',style: TextStyle(color: Colors.grey[700],fontSize: 16),),
        SizedBox(height: 1.5.h,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xffE1E9FC),
          ),
          height: 50.0,
          child:  InkWell(
            onTap: (){
              showCountryPicker(
                context: context,
                //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                exclude: <String>['KN', 'MF'],
                favorite: <String>['SE'],
                //Optional. Shows phone code before the country name.
                showPhoneCode: false,
                onSelect: (Country value) {
                  setState(() {
                    country = value.flagEmoji;
                    countryName= value.name;
                  });

                  print('Select country: ${value.displayName}');
                },
                // Optional. Sets the theme for the country list picker.
                countryListTheme: CountryListThemeData(
                  // Optional. Sets the border radius for the bottomsheet.
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  // Optional. Styles the search field.
                  inputDecoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Start typing to search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF8C98A8).withOpacity(0.2),
                      ),
                    ),
                  ),
                  // Optional. Styles the text in the search field
                  searchTextStyle: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$country   $countryName',style: TextStyle(color: Colors.grey.shade800),),
                  Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
          )
        ),
      ],
    );
  }

Widget _buildName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Name',style: TextStyle(color: Colors.grey[700],fontSize: 16),),
      SizedBox(height: 1.5.h,),
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
              return 'Name';
            }
          },

          controller: nameController,
          obscureText: true,
          style:const TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
          ),
          decoration:const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.text_fields,
              color: Color(0xff376AED),
            ),
            hintText: 'Enter your name',
            //  hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
  );
}

Widget _buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Email',style: TextStyle(color: Colors.grey[700],fontSize: 16),),
      SizedBox(height: 1.5.h,),
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
              return 'Email';
            }
          },

          controller: nameController,
          obscureText: true,
          style:const TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
          ),
          decoration:const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Color(0xff376AED),
            ),
            hintText: 'Enter your email',
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
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>const MainScreen()), (route) => false);
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 3.h,),
              const Center(
                child: Text('Profile Info',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),
              SizedBox(height: 3.h,),
              Image.asset('assets/img.png',height: 12.h,),
              SizedBox(height: 2.h,),
              _buildName(),
              SizedBox(height: 1.h,),
              _buildCountry(),
              SizedBox(height: 1.h,),
              _buildEmail(),
              SizedBox(height: 1.h,),
              _buildPasswordTF(),
              Spacer(),
              _buildLoginBtn()
            ],
          ),
        ),
      )
    );
  }
}
