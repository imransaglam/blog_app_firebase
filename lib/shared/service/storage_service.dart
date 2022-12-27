import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StorageService extends GetxService{
  Future<StorageService> init()async{
   return this;
  }
  //Writing data
 strogeUser(topic,content){
Map<String,dynamic>blogData={"topic":topic,"content":content};
CollectionReference collectionRef=FirebaseFirestore.instance.collection("blog");
collectionRef.add(blogData);
  }
//Reading data
Stream<QuerySnapshot> readBlog(){
   var ref=FirebaseFirestore.instance.collection("blog").snapshots();
   return ref;
    }
//Delete data
deleteData(String blogId){
  FirebaseFirestore.instance.collection("blog").doc(blogId).delete();
}
  
}
