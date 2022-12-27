import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loginregister/models/blog_model.dart';
import 'package:loginregister/shared/service/storage_service.dart';

class HomeController extends GetxController{
   List<String> docIDs = []; 
  StorageService db = StorageService();
}