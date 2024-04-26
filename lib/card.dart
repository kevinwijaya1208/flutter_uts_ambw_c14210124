import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardMenu extends StatelessWidget {
  final String title;
  final String alamat;
  final String description;
  final String path;
  const CardMenu({super.key, required this.title, required this.alamat, required this.description, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ], color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                child: Container(
                  width: 180,
                  height: 120,
                    child: Image.asset(path,
                    fit: BoxFit.fill,),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                alamat,
                style: TextStyle(color: Colors.grey, ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(maxLines: 1, overflow: TextOverflow.ellipsis,
                description,
                style: TextStyle(color: Colors.grey, fontSize: 13 ),
              ),
            )
          ],
        ),
    );
  }
}