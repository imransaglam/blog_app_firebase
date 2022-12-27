import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:loginregister/const/const_data.dart';
import 'package:loginregister/widget/custom_elevated_button.dart';
import '../../routes/app_pages.dart';
import '../../shared/service/storage_service.dart';
import 'detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
   DetailScreen({super.key});
final loginText texts=loginText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: loginColor.appBarBgColorss ,
        leading: IconButton(onPressed: (){
          Get.toNamed(Routes.HOME);
        }, icon: Icon(Icons.chevron_left_outlined),),
        title:Text(texts.appBarTextt,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily:loginText.homeFontName,color:loginColor.appBarColorss,),) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingMeasurement.detailsScreenPadding,
          child: Column(
            children: [
                 TextFormField(
                  controller: controller.topic,
                   decoration:InputDecorationTopic().inputs
                 ),
                 _sizedBox2(),
                  Container(
                     height: MediaQuery.of(context).size.height*0.5,
                    child: TextFormField(
                      controller: controller.content,
                      keyboardType: TextInputType.multiline,
                    maxLines: 30,
                     decoration:InputDecorationContent().inputs
                ),
                  ),
                    _sizedBox2(),
                  Padding(
                    padding: paddingMeasurement.elevatedButtonPadding,
                    child: customElevatedButton(title: texts.elevatedText,
                     onPressedy: (){
                     controller.storage.strogeUser(controller.topic.text,controller.content.text);
                      Get.toNamed(Routes.HOME);
                    },titleFontFamily: loginText.homeFontName),
                  )

            ],
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBox2() => SizedBox(height: 20,);
}