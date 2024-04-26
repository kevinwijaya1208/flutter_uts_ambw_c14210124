import 'package:flutter/material.dart';

class SeeAllCard extends StatelessWidget {
  final String title;
  final String alamat;
  final String description;
  final String path;
  const SeeAllCard({super.key, required this.title, required this.alamat, required this.description, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                  width: MediaQuery.of(context).size.width,
                  height: 300,
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
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
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