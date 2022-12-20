import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
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
               Text(texts.email,style: Theme.of(context).textTheme.subtitle2?.copyWith(color:loginColor.textColors,fontWeight: FontWeight.w400)),
               Padding(
                 padding: paddingMeasurement.textFieldPadding,
                 child: SizedBox(
                  height: 48,
                   child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                     decoration:InputDecarotorEmail().inputs,
                   ),
                 ),
               ),
                _sizedBox2(),
                 Text(texts.passsword,style: Theme.of(context).textTheme.subtitle2?.copyWith(color:loginColor.textColors,fontWeight: FontWeight.w400)),
               Padding(
                 padding: paddingMeasurement.textFieldPadding,
                 child: SizedBox(
                  height: 48,
                   child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                     decoration:InputDecarotorEmail().inputs,
                   ),
                 ),
               ),
               SizedBox(
                width: MediaQuery.of(context).size.width,
                 child: Padding(
                   padding: paddingMeasurement.textFieldPadding,
                   child: customElevatedButton(title: loginText.login,),
                 ),
               ),
                Center(child: customTextButton(title:loginText.textSignUp))
            ],
          ),
              ),
            ),
        ));
  }
}



SizedBox _sizedBox() =>const  SizedBox(
        height: 120,
      );
       SizedBox _sizedBox2() => const SizedBox(
        height: 40,
      );

