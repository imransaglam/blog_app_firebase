import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginregister/const/const_data.dart';
import 'package:loginregister/widget/custom_elevated_button.dart';
import 'package:loginregister/widget/custom_floatingaction_button.dart';

class DetailScreen extends StatelessWidget {
   DetailScreen({super.key});
final loginText texts=loginText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: loginColor.appBarBgColorss ,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left_outlined),),
        title:Text(texts.appBarTextt,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily:loginText.homeFontName,color:loginColor.appBarColorss,),) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingMeasurement.detailsScreenPadding,
          child: Column(
            children: [
                 TextFormField(
                   decoration:InputDecorationTopic().inputs
                 ),
                 _sizedBox2(),
                  Container(
                     height: MediaQuery.of(context).size.height*0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                    maxLines: 30,
                     decoration:InputDecorationContent().inputs
                ),
                  ),
                    _sizedBox2(),
                  Padding(
                    padding: paddingMeasurement.elevatedButtonPadding,
                    child: customElevatedButton(title: texts.elevatedText, onPressedy: (){},titleFontFamily: loginText.homeFontName),
                  )

            ],
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBox2() => SizedBox(height: 20,);
}