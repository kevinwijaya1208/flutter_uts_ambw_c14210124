import 'package:flutter/material.dart';
// import 'package:flutter_uts_ambw_c14210124/home.dart';
import 'package:flutter_uts_ambw_c14210124/main.dart';
import 'package:flutter_uts_ambw_c14210124/seeallcard.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

final List _title = [
  'KFC Broadway',
  'Greek House',
  'Kappunkap',
  'Tacoco',
  'Erens Pastry',
  'Curry Temple'
];

final List _alamat = [
  '122 Queen Street',
  '23 Queen Street',
  '17 Oak Street',
  '32 Maple Street',
  '56 Pine Street',
  '78 Cedar Street'
];

final List _description = [
  'Fried Chicken, American',
  'Burritos, Greek',
  'Pad Thai Thai, Thailand',
  'Taco Mexicana, Mexican',
  'Croissant, French',
  'Curry, Indian'
];

final List _path = [
  'lib/images/kfc.jpg',
  'lib/images/burrito.jpg',
  'lib/images/padthai.jpg',
  'lib/images/taco.jpg',
  'lib/images/croissant.jpg',
  'lib/images/curry.jpg',
];

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainApp()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.amber,
          ),
        ),
        title: Text(
          'Sydney CBD',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _title.length,
              itemBuilder: (context, index) => SeeAllCard(title: _title[index],
                  alamat: _alamat[index],
                  description: _description[index],
                  path: _path[index],),
            ),
          )
        ],
      ),
    );
  }
}
