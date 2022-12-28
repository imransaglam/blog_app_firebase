import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loginregister/shared/service/firestore_service.dart';

class DetailController extends GetxController{
 TextEditingController topic=TextEditingController();
 TextEditingController content=TextEditingController();
 StorageService db=StorageService();

}