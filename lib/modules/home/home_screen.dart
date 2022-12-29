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
        leading: customTextButton(
            title: "istatistik",
            onPressedx: () {
              controller.analyticsService.logEvent();
            }),
        leadingWidth: 70,
        centerTitle: true,
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
              child: Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  child: Obx(
                    () => controller.list.isEmpty
                        ? CircularProgressIndicator()
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.list.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: texts.elevationCard,
                                child: Container(
                                  height: texts.containerHeight + 50,
                                  width: texts.containerWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          texts.borderRadiusCard)),
                                  child: Column(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: texts.containerWidth,
                                        height: texts.containerrHeight,
                                        padding:
                                            paddingMeasurement.containerPadding,
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  'https://cdn-icons-png.flaticon.com/512/4140/4140048.png',
                                                  scale: texts
                                                      .circularAvatarScale),
                                            ),
                                            Padding(
                                              padding: paddingMeasurement
                                                  .containerrPadding,
                                              child: Container(
                                                  height:
                                                      texts.containerrrHeight,
                                                  width: texts.containerrrWidth,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "${controller.list[index].topic}",
                                                            maxLines: texts
                                                                .textMaxLines,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleLarge
                                                                ?.copyWith(
                                                                  fontSize: 18,
                                                                    fontFamily:
                                                                        loginText
                                                                            .homeFontName,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                          ),
                                                          _sizedBox(),
                                                          Text(
                                                            'Emre Varol',
                                                            maxLines: texts
                                                                .textMaxLiness,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.copyWith(
                                                                    fontFamily:
                                                                        loginText
                                                                            .homeFontName,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize: texts
                                                                        .textFontSize),
                                                          )
                                                        ],
                                                      ),
                                                      // controller.analyticsService.logEvent();
                                                     
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: paddingMeasurement
                                                .containerrrPadding,
                                            width: texts.containerrrrWidth,
                                            height: texts.containerrrrHeight,
                                            child: Text(
                                              "${controller.list[index].content}",
                                              maxLines: texts.textMaxLines,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge
                                                  ?.copyWith(
                                                      fontFamily: loginText
                                                          .homeFontName,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize:
                                                          texts.textFontSize,
                                                      color: loginColor
                                                          .blogTextColors),
                                            ),
                                          ),
                                        ],
                                      ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           customTextButton(
                                                              title: "DELETE",
                                                              onPressedx: () {
                                                                controller.db.deleteData(
                                                                    controller
                                                                        .list[index]
                                                                        .documentId!);
                                                              }),
                                                                customTextButton(
                                          title: "UPDATE",
                                          onPressedx: () {
                                            controller.updateController.document_id = controller.list[index].documentId;
                                            Get.toNamed(Routes.UPDATE);
                                          }),
                                         ],
                                       ),
                                    
                                    ],
                                  ),
                                ),
                              );
                            }),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        texts: texts,
        onPressedz: () {
          Get.toNamed(Routes.DETAIL);
        },
      ),
    );
  }

  SizedBox _sizedBox() => SizedBox(
        height: 5,
      );
}
