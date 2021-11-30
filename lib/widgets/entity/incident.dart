import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/widgets/texts/bicolor_text.dart';

class IncidentWidget extends StatelessWidget {
  IncidentWidget(
      {Key? key,
      required this.name,
      required this.category,
      required this.fnd,
      required this.source,
      required this.description,
      this.imagesUri,
      this.locationGeo,
      this.locationQR,
      required this.applicant,
      required this.executor})
      : super(key: key);

  String name;
  String category;
  String fnd;
  String source;
  String description;
  List<String>? imagesUri;
  String? locationGeo;
  String? locationQR;
  String applicant;
  String executor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(),
            if (imagesUri![0] != null)
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imagesUri![0],
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    LinearProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => SizedBox(),
              )
            else
              SizedBox(),
            SizedBox(height: 20),
            Text(
              name,
              style:
                  TextStyle(fontSize: 14, color: Color.fromRGBO(63, 59, 93, 1)),
            ),
            SizedBox(height: 10),
            Text(
              "Категория: ${category}",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            Text(
              "ФНД: ${fnd}",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            Text(
              "Источник: ${source}",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 12, color: Color.fromRGBO(63, 59, 93, 1)),
            ),
            SizedBox(height: 5),
            Center(
              child: Image(
                alignment: Alignment.center,
                image: AssetImage(locationQR!),
                height: 200,
                width: 200,
              ),
            ),
            // CachedNetworkImage(
            //   fit: BoxFit.cover,
            //   imageUrl: locationQR!,
            //   progressIndicatorBuilder: (context, url, downloadProgress) =>
            //       LinearProgressIndicator(value: downloadProgress.progress),
            //   errorWidget: (context, url, error) => SizedBox(),
            // ),
            SizedBox(height: 10),
            Text(
              "Заявитель ${applicant},       Исполнитель ${executor}",
              style: TextStyle(fontSize: 10, color: Color.fromRGBO(118, 156, 144, 1)),
            )
          ]),
    );
  }
}
