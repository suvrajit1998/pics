import 'package:flutter/material.dart';

class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  ImageModel.fromKey({ @required this.id, @required this.url, @required this.title});
}
