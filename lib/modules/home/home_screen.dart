import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginregister/const/const_data.dart';
import 'package:loginregister/widget/custom_floatingaction_button.dart';
import 'package:loginregister/widget/custom_text_button.dart';

import '../../routes/app_pages.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});
  final loginText texts = loginText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: texts.elevationAppBar,
        backgroundColor: loginColor.appBarBgColors,
        title: (Text(texts.appBarText, style: ProjectStyle.appBarStyle)),
        actions: [
          IconButton(onPressed: () {}, icon: ProjectStyle.appBarIcon),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: paddingMeasurement.stackPadding,
              child: StreamBuilder(
                stream: controller.db.readBlog(),
                builder: (context, snapshot) {
                  return !snapshot.hasData
                        ? CircularProgressIndicator()
                        : Container(
                    height:700,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                           DocumentSnapshot myBlog =
                                  snapshot.data!.docs[index];
                          return Card(
                            elevation: texts.elevationCard,
                            child: Container(
                              height: texts.containerHeight,
                              width: texts.containerWidth,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      texts.borderRadiusCard)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: texts.containerWidth,
                                    height: texts.containerrHeight,
                                    padding: paddingMeasurement.containerPadding,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/4140/4140048.png',
                                              scale: texts.circularAvatarScale),
                                        ),
                                        Padding(
                                          padding:
                                              paddingMeasurement.containerrPadding,
                                          child: Container(
                                              height: texts.containerrrHeight,
                                              width: texts.containerrrWidth,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "${myBlog["topic"]}",
                                                        maxLines: texts.textMaxLines,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleLarge
                                                            ?.copyWith(
                                                                fontFamily: loginText
                                                                    .homeFontName,
                                                                fontWeight:
                                                                    FontWeight.w500),
                                                      ),
                                                      _sizedBox(),
                                                      Text(
                                                        'Emre Varol',
                                                        maxLines: texts.textMaxLiness,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                                fontFamily: loginText
                                                                    .homeFontName,
                                                                fontWeight:
                                                                    FontWeight.w400,
                                                                fontSize:
                                                                    texts.textFontSize),
                                                      )
                                                    ],
                                                  ),
                                                  customTextButton(title: "DELETE", onPressedx: (){
                                                    controller.db.deleteData(snapshot.data!.docs[index].id);
                                                  })
                                                ],
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: paddingMeasurement.containerrrPadding,
                                    width: texts.containerrrrWidth,
                                    height: texts.containerrrrHeight,
                                    child: Text(
                                     "${myBlog["content"]}",
                                      maxLines: texts.textMaxLines,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                              fontFamily: loginText.homeFontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: texts.textFontSize,
                                              color: loginColor.blogTextColors),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  );
                }
              ),
            ),
          ],
          
        ),
      ),
       floatingActionButton: CustomFloatingActionButton(texts: texts,onPressedz: () {
         Get.toNamed(Routes.DETAIL);
       },)
      
        );
    
  }

  SizedBox _sizedBox() => SizedBox(
        height: 5,
      );
}


