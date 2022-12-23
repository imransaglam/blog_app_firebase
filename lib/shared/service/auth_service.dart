import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class AuthService extends GetxService{

   Future<AuthService> init() async{
    createUser();
    return this;
   }
   createUser() async{
      try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: "email@email.com",
    password: "123456789",
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
    }



}