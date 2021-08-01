// To parse this JSON data, do
//
//     final postResponse = postResponseFromJson(jsonString);

import 'dart:convert';

List<PostResponse> postResponseFromJson(String str) => List<PostResponse>.from(json.decode(str).map((x) => PostResponse.fromJson(x)));


List<PostResponse> postResponseFromRawJson(dynamic json) => List<PostResponse>.from((json as List<dynamic>).map((x) => PostResponse.fromJson(x)));

String postResponseToJson(List<PostResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostResponse {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostResponse({
    this.userId,
    this.id,
    this.title,
    this.body,
  });



  PostResponse copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      PostResponse(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory PostResponse.fromJson(Map<String, dynamic> json) => PostResponse(
    userId: json["userId"] == null ? null : json["userId"],
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    body: json["body"] == null ? null : json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId == null ? null : userId,
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "body": body == null ? null : body,
  };
}
