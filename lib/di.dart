import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:loginregister/shared/service/analytics_service.dart';
import 'package:loginregister/shared/service/auth_service.dart';
import 'package:loginregister/shared/service/firebase_service.dart';
import 'package:loginregister/shared/service/firestore_service.dart';

class DependencyInjection{

    static init() async{
      await Get.putAsync(()=>FirebaseService().init());
      await Get.putAsync(()=>AuthService().init());
      await Get.putAsync(()=>StorageService().init());
      await Get.putAsync(()=>AnalyticsService().init());
    }
   
  }
  