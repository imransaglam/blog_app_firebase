import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginregister/const/const_data.dart';
import 'package:loginregister/modules/login/login_screen.dart';
import 'package:loginregister/modules/register/register_controller.dart';

import '../../routes/app_pages.dart';
import '../../widget/custom_elevated_button.dart';
import '../../widget/custom_text_button.dart';
import 'register_controller.dart';

class RegisterScreen extends GetView<RegisterControler> {
   RegisterScreen({super.key});

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
            //  Padding(
            //    padding: paddingMeasurement.textFieldPadding,
            //    child: SizedBox(
            //     height: texts.sheight,
            //      child: TextFormField(
            //         keyboardType: TextInputType.name,
            //        decoration:InputDecarotorUserName().inputs,
            //      ),
            //    ),
            //  ),
             _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: texts.sheight,
                 child: TextFormField(
                  controller: controller.email,
                    keyboardType: TextInputType.emailAddress,
                   decoration:InputDecarotorUserMail().inputs,
                 ),
               ),
             ),
            //  _sizedBox4(),
            //  Padding(
            //    padding: paddingMeasurement.textFieldPadding,
            //    child: SizedBox(
            //     height: texts.sheight,
            //      child: TextFormField(
            //         keyboardType: TextInputType.phone,
            //        decoration:InputDecarotorUserPhoneNumber().inputs,
            //      ),
            //    ),
            //  ),
                           _sizedBox4(),
             Padding(
               padding: paddingMeasurement.textFieldPadding,
               child: SizedBox(
                height: texts.sheight,
                 child: TextFormField(
                  controller: controller.password,
                    keyboardType: TextInputType.visiblePassword,
                   decoration:InputDecarotorUserPassword().inputs,
                 ),
               ),
             ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                 child:  Padding(
                   padding: paddingMeasurement.textFieldPadding,
                   child: customElevatedButton(title: loginText.signUp,onPressedy: () {
                     controller.auth.createUser(controller.email.text, controller.password.text);
                   },),
                 ),
               ),
               Center(child: customTextButton(title:loginText.textLogin,onPressedx: () {
                 Get.toNamed(Routes.LOGIN);
               },))
             ],
            
          ),
        ) ),
    );
  }

  SizedBox _sizedBox3() => SizedBox(height: 160,);
   SizedBox _sizedBox4() => SizedBox(height: 20,);
}

