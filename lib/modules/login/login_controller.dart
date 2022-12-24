import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loginregister/shared/service/auth_service.dart';

class LoginController extends GetxController{
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  AuthService auth=AuthService();
}