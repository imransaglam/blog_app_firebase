class BlogModel {
  String? documentId;
  String? topic;
  String? content;

  BlogModel({this.documentId,this.topic,  this.content});

  BlogModel.fromJson(Map<String,dynamic> json){
    documentId = json["document_id"];
    topic = json['topic'];
    content = json['content'];
  }
}
