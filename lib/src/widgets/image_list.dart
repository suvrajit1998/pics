import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image.url),
            padding: EdgeInsets.only(
              bottom: 8.8,
            ),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
