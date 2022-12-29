import 'package:get/get.dart';
import 'package:loginregister/models/blog_model.dart';
import 'package:loginregister/modules/update/update_controller.dart';
import 'package:loginregister/shared/service/analytics_service.dart';
import 'package:loginregister/shared/service/firestore_service.dart';

class HomeController extends GetxController{
  AnalyticsService analyticsService=Get.find();
  UpdateController updateController = Get.put(UpdateController());
  List<String> docIDs = []; 
  StorageService db = StorageService();
  BlogModel model = BlogModel();
  RxList<BlogModel> list = RxList.empty();
  // String? blogId;

  @override
  void onInit() {
    list.bindStream(db.readBlog());
    super.onInit();
  }
  
 

}