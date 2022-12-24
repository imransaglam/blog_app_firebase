import 'package:flutter/material.dart';
import 'package:loginregister/modules/register/register_screen.dart';

class customTextButton extends StatelessWidget {
  const customTextButton({
    Key? key, required this.title, required this.onPressedx,
  }) : super(key: key);
 final String title;
 final void Function() onPressedx;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedx, child: Text(title,style: TextStyle(fontFamily: 'Teko',fontWeight: FontWeight.w400,fontSize: 18),));
  }
}