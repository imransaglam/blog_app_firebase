import 'package:flutter/material.dart';
import 'package:loginregister/const/const_data.dart';

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
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
               ),
                 Center(
                   child: Text(
                    texts.accountText,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontWeight: FontWeight.w600,color: loginColor.titleColors),
                ),
                 ),
                  
               _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: 48,
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
                height: 48,
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
                height: 48,
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
                height: 48,
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
               Center(child: customTextButton(title:loginText.textLogin))
             ],
            
          ),
        ) ),
    );
  }

  SizedBox _sizedBox3() => SizedBox(height: 60,);
   SizedBox _sizedBox4() => SizedBox(height: 20,);
}

