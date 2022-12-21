import 'package:flutter/material.dart';
import 'package:loginregister/const/const_data.dart';
import 'package:loginregister/pages/login_screen.dart';

import '../widget/custom_elevated_button.dart';
import '../widget/custom_text_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final loginText texts = loginText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Padding(
          padding: paddingMeasurement.columnPadding,
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              _sizedBox3(),
               Center(
                 child: Text(
                    texts.account,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w900,fontFamily: 'Teko',fontSize: 28),
                  ),
               ),
                 Center(
                   child: Text(
                    texts.accountText,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600,color: loginColor.titleColors,fontFamily: 'Teko',fontSize: 20),
                ),
                 ),
                  
               _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: texts.sheight,
                 child: TextFormField(
                    keyboardType: TextInputType.name,
                   decoration:InputDecarotorUserName().inputs,
                 ),
               ),
             ),
             _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: texts.sheight,
                 child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                   decoration:InputDecarotorUserMail().inputs,
                 ),
               ),
             ),
              _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: texts.sheight,
                 child: TextFormField(
                    keyboardType: TextInputType.phone,
                   decoration:InputDecarotorUserPhoneNumber().inputs,
                 ),
               ),
             ),
                           _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: texts.sheight,
                 child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                   decoration:InputDecarotorUserPassword().inputs,
                 ),
               ),
             ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                 child: const Padding(
                   padding: paddingMeasurement.textFieldPadding,
                   child: customElevatedButton(title: loginText.signUp,),
                 ),
               ),
               Center(child: customTextButton(title:loginText.textLogin,onPressedx: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()) );
               },))
             ],
            
          ),
        ) ),
    );
  }

  SizedBox _sizedBox3() => SizedBox(height: 130,);
   SizedBox _sizedBox4() => SizedBox(height: 20,);
}

