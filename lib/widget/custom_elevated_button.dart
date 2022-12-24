import 'package:flutter/material.dart';

class customElevatedButton extends StatelessWidget {
   customElevatedButton({
    Key? key, required this.title, required this.onPressedy,
  }) : super(key: key);
 final String title;
 final void Function() onPressedy;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     style: ElevatedButton.styleFrom(backgroundColor: Color(0xff0E64D2),textStyle: TextStyle(fontFamily: 'Teko',fontWeight: FontWeight.w400,fontSize: 18)),
     onPressed: onPressedy,
     child:Text(title));
  }
}