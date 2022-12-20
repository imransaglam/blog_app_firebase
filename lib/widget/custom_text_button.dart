import 'package:flutter/material.dart';
import 'package:loginregister/pages/sign_up_screen.dart';

class customTextButton extends StatelessWidget {
  const customTextButton({
    Key? key, required this.title,
  }) : super(key: key);
 final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpScreen()) );
    }, child: Text(title));
  }
}