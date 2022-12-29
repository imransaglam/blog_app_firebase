import 'package:get/get.dart';
import 'update_controller.dart';

class UpdateBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(UpdateController());
  }

}