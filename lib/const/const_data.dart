import 'package:flutter/material.dart';

class paddingMeasurement {
  static const columnPadding = EdgeInsets.symmetric(horizontal: 60);
  static const iconPadding = EdgeInsets.only(left: 8);
  static const textFieldPadding = EdgeInsets.only(top: 10);
  static const stackPadding=EdgeInsets.symmetric(horizontal: 15);
  static const containerPadding=EdgeInsets.only(top:14,right: 16,bottom: 12,left: 16);
  static const containerrPadding=EdgeInsets.only(left:16,right: 16);
  static const containerrrPadding=EdgeInsets.all(16.0);
}
class ProjectStyle{
  static const TextStyle appBarStyle=TextStyle(
 color:loginColor.appBarColors,
 fontFamily: loginText.homeFontName,
 fontSize: 20,
 fontWeight: FontWeight.w500,
 letterSpacing: 1
  );
  static const Icon appBarIcon=Icon(
    Icons.search,color: loginColor.searchIconColors,);
}
class loginText {
  final double containerHeight=176;
  final double containerWidth=384;
  final double containerrHeight=96;
  final double containerrrWidth=256;
  final double containerrrHeight=70;
  final double containerrrrWidth=344;
  final double containerrrrHeight=80;
  final double sheight=48;
  final double textFontSize=14;
  final double circularAvatarScale=40;
  final double elevationAppBar=0;
  final double elevationCard=2;
  final double borderRadiusCard=4;
   final double borderRadiusElevatedButton=15;
  final int textMaxLines=2;
  final int textMaxLiness=1;
  final String floatText = "CREATE";
  final String welcome = "Hi, Welcome Back!";
  final String email = "Email";
  final String passsword = "Password";
  final String account = "Create an account";
  final String accountText = "Connect with your friends today!";
  final String appBarText = "Home";
  static const fontName='Teko';
  static const homeFontName='Comfortaa';
  static const example="example@gmail.com";
  static const enterPassword="Enter Your Password";
  static const login="Login";
  static const userName="Enter Your Username";
  static const userMail="Enter Your Email";
  static const userPhoneNumber="Enter Your Phone Number";
  static const userPassword="Enter Your Password";
  static const signUp="Sign Up";
  static const textLogin="Login";
  static const textSignUp="Sign Up";

}

class loginColor {
  static const Color iconColors = Color.fromARGB(255, 245, 140, 2);
  static const Color textColors = Color(0xff695C5C);
  static const Color titleColors = Color(0xff343434);
  static const Color appBarColors=Colors.black;
  static const Color searchIconColors=Color(0xff005FEE);
  static const Color blogTextColors=Color(0xff666666);
  static const Color appBarBgColors=Colors.transparent;
  static const Color elevatedButtonColors=Color(0xffB2D1FF);
}
class InputDecarotorEmail{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.example,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: loginText.fontName,fontSize: 18)
                 );
}
class InputDecarotorPassword{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.enterPassword,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: loginText.fontName,fontSize: 18)
                 );
}
class InputDecarotorUserName{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userName,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: loginText.fontName,fontSize: 18)
                 );
}
class InputDecarotorUserMail{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userMail,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: loginText.fontName,fontSize: 18)
                 );
                 
}
class InputDecarotorUserPhoneNumber{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userPhoneNumber,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: loginText.fontName,fontSize: 18)
                 );
                 
}
class InputDecarotorUserPassword{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userPassword,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: loginText.fontName,fontSize: 18)
                 );
                 
}