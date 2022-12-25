import 'package:get/get.dart';
import 'package:loginregister/modules/home/home_binding.dart';
import 'package:loginregister/modules/home/home_screen.dart';
import 'package:loginregister/modules/login/login_binding.dart';
import 'package:loginregister/modules/register/register_binding.dart';
import 'package:loginregister/modules/register/register_screen.dart';
import '../modules/detail/detail_binding.dart';
import '../modules/detail/detail_screen.dart';
import '../modules/login/login_screen.dart';

part 'app_routes.dart';
class AppPages{
  static const INITIAL=Routes.LOGIN;
  static final routes = [
    GetPage(
        name: Routes.LOGIN,
        page: () =>  LoginScreen(),
        binding: LoginBinding()),

        GetPage(
      name: Routes.REGISTER, 
      page: ()=>RegisterScreen(),
      binding: RegisterBinding()
      ),
       GetPage(
      name: Routes.HOME, 
      page: ()=>HomeScreen(),
      binding: HomeBinding()
      ),
         GetPage(
      name: Routes.DETAIL, 
      page: ()=>DetailScreen(),
      binding: DetailBinding()
      ),
   
      
   
  ];
}