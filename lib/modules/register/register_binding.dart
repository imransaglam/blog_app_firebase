import 'package:get/get.dart';
import 'package:loginregister/modules/register/register_controller.dart';

class RegisterBinding implements Bindings{
  @override
  void dependencies() {
   Get.put(RegisterControler());
  }

}