import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginregister/const/const_data.dart';
import 'package:loginregister/widget/custom_floatingaction_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final loginText texts = loginText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
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
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'What is the best way to manage state in flutter',
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
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
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
              ),
            ),
          ],
          
        ),
      ),
       floatingActionButton: CustomFloatingActionButton(texts: texts)
       
        );
    
  }

  SizedBox _sizedBox() => SizedBox(
        height: 5,
      );
}


