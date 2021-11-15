import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  News(
      {Key? key,
      required this.title,
      required this.description,
      required this.date,
      this.imageUri})
      : super(key: key);
  String title;
  String? imageUri;
  String description;
  String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Divider(),
        imageUri!.isNotEmpty
            ? CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageUri!,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) =>
                    SizedBox(),
              )
            : SizedBox(),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Color.fromRGBO(63, 59, 93, 1)),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        SizedBox(height: 10),
        Text(
          date,
          style:
              TextStyle(fontSize: 12, color: Color.fromRGBO(118, 156, 144, 1)),
        )
      ]),
    );
  }
}
