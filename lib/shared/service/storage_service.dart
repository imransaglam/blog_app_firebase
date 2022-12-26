import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StorageService extends GetxService{
  Future<StorageService> init()async{
   return this;
  }
 strogeUser(User user)async{
  final docUser=FirebaseFirestore.instance.collection('blog').doc();
 user.id=docUser.id;
  final json=user.toJson();
  await docUser.set(json);
  }
  
}
class User{
  String id;
   String topic;
   String content;

  User({
    this.id='',
    this.topic='',
     this.content='',

  });

  Map<String,dynamic> toJson()=>{
    'id':id,
    'topic':topic,
    'content':content
  };

}
