import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginregister/pages/sign_up_screen.dart';
import '../const/const_data.dart';
import '../widget/custom_elevated_button.dart';
import '../widget/custom_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginText texts = loginText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: paddingMeasurement.columnPadding,
              child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    texts.welcome,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w900,fontFamily: 'Teko',fontSize: 28),
                  ),
                  const Padding(
                    padding: paddingMeasurement.iconPadding,
                    child: Icon(
                      Icons.waving_hand_rounded,
                      color: loginColor.iconColors,
                    ),
                  ),
                  
                ],
              ),
               _sizedBox2(),
               Text(texts.email,style: Theme.of(context).textTheme.titleMedium?.copyWith(color:loginColor.textColors,fontWeight: FontWeight.w400,fontFamily: 'Teko',fontSize: 20)),
               Padding(
                 padding: paddingMeasurement.textFieldPadding,
                 child: SizedBox(
                  height: texts.sheight,
                   child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                     decoration:InputDecarotorEmail().inputs,
                   ),
                 ),
               ),
                _sizedBox2(),
                 Text(texts.passsword,style: Theme.of(context).textTheme.titleMedium?.copyWith(color:loginColor.textColors,fontWeight: FontWeight.w400,fontFamily: 'Teko',fontSize: 20)),
               Padding(
                 padding: paddingMeasurement.textFieldPadding,
                 child: SizedBox(
                  height: texts.sheight,
                   child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                     decoration:InputDecarotorPassword().inputs,
                   ),
                 ),
               ),
               SizedBox(
                width: MediaQuery.of(context).size.width,
                 child:const Padding(
                   padding: paddingMeasurement.textFieldPadding,
                   child: customElevatedButton(title: loginText.login,),
                 ),
               ),
                  Center(child: customTextButton(title:loginText.textSignUp,onPressedx: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpScreen()) );
               },))
            ],
          ),
              ),
            ),
        ));
  }
}



SizedBox _sizedBox() =>const  SizedBox(
        height: 180,
      );
       SizedBox _sizedBox2() => const SizedBox(
        height: 30,
      );
   

