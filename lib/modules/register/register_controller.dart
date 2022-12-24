import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loginregister/shared/service/auth_service.dart';

class RegisterControler extends GetxController{
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  AuthService auth=AuthService();
}