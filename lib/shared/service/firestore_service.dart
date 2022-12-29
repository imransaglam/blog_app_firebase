import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:loginregister/models/blog_model.dart';

class StorageService extends GetxService {
  Future<StorageService> init() async {
    return this;
  }

  //Writing data
  strogeUser(String topic,String  content) async {
 /* await FirebaseFirestore.instance.collection("blog").add({
"topic":topic,
"content":content
    });
    print(topic);*/
    Map<String, dynamic> blogData = {"topic": topic, "content": content};
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection("blog");
    collectionRef.add(blogData); 
  }

//Reading data
  Stream<List<BlogModel>> readBlog() {
    var blog = FirebaseFirestore.instance.collection('blog').snapshots().map((query) => query.docs
        .map((item) =>
            BlogModel.fromJson({"document_id": item.id,...item.data()}))
        .toList());
    return blog;
  }

//Delete data
  deleteData(String blogId) {
    FirebaseFirestore.instance.collection("blog").doc(blogId).delete();
  }


  updateData(String blogId, Map<String, dynamic> data){
  FirebaseFirestore.instance.collection('blog').doc(blogId).update(data);
}

}


