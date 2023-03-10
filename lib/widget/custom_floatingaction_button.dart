import 'package:flutter/material.dart';
import 'package:loginregister/const/const_data.dart';

class CustomFloatingActionButton extends StatelessWidget {
   CustomFloatingActionButton({
    Key? key,
    required this.texts, required this.onPressedz,
  }) : super(key: key);

  final loginText texts;
 final void Function() onPressedz;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
     shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(texts.borderRadiusElevatedButton)),
     backgroundColor:loginColor.elevatedButtonColors,
     onPressed:onPressedz,
     icon: Icon(Icons.add,color: loginColor.appBarColors,),
     label: Text(texts.floatText,style:Theme.of(context).textTheme.bodyMedium?.copyWith(color: loginColor.appBarColors,fontFamily:loginText.homeFontName) ),
     
     
    
    
      );
  }
}