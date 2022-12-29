import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginregister/modules/login/login_controller.dart';
import 'package:loginregister/modules/register/register_screen.dart';
import '../../const/const_data.dart';
import '../../routes/app_pages.dart';
import '../../widget/custom_elevated_button.dart';
import '../../widget/custom_text_button.dart';

class LoginScreen extends GetView<LoginController> {
 LoginScreen({super.key});

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
                    controller: controller.email,
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
                    obscureText:true ,
                   controller: controller.password,
                      keyboardType: TextInputType.visiblePassword,
                     decoration:InputDecarotorPassword().inputs,
                   ),
                 ),
               ),
               SizedBox(
                width: MediaQuery.of(context).size.width,
                 child: Padding(
                   padding: paddingMeasurement.textFieldPadding,
                   child: customElevatedButton(titleFontFamily: loginText.fontName,title: loginText.login,onPressedy:()async{
                   await controller.auth.signUpAccount(controller.email.text,controller.password.text);
                   },)
                 ),
               ),
                  Center(child: customTextButton(title:loginText.textSignUp,onPressedx: () {
                  Get.toNamed(Routes.REGISTER);
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
   

