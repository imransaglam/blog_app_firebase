import 'package:flutter/material.dart';

class paddingMeasurement {
  static const columnPadding = EdgeInsets.symmetric(horizontal: 60);
  static const iconPadding = EdgeInsets.only(left: 8);
   static const textFieldPadding = EdgeInsets.only(top: 20);
}

class loginText {
  final String welcome = "Hi, Welcome Back!";
  final String email = "Email";
  final String passsword = "Password";
  final String account = "Create an account";
  final String accountText = "Connect with your friends today!";
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
}
class InputDecarotorEmail{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.example,
                 );
}
class InputDecarotorPassword{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.enterPassword,
                 );
}
class InputDecarotorUserName{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userName,
                 );
}
class InputDecarotorUserMail{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userMail,
                 );
                 
}
class InputDecarotorUserPhoneNumber{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userPhoneNumber,
                 );
                 
}
class InputDecarotorUserPassword{
  final inputs=const  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:loginText.userPassword,
                 );
                 
}