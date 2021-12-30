import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  // const ImageList({ Key? key }) : super(key: key);

  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          margin: EdgeInsets.all(20.0),
          child: Image.network(images[index].url),
        );
      },
    );
  }
}
