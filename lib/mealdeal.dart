import 'package:flutter/material.dart';
import 'package:flutter_uts_ambw_c14210124/main.dart';
import 'seeallcard.dart';

class MealDeal extends StatefulWidget {
  const MealDeal({super.key});

  @override
  State<MealDeal> createState() => _MealDealState();
}

final List _title2 = [
  'Big Burger',
  'Beef Steak',
  'Fried Rice',
  'Biryani',
  'Sushi',
  'Nasi Lemak'
];

final List _alamat2 = [
  '122 Queen Street',
  '23 Queen Street',
  '17 Oak Street',
  '32 Maple Street',
  '56 Pine Street',
  '78 Cedar Street'
];

final List _description2 = [
  'Burger, American',
  'Steak, American',
  'Fried Rice, Indonesian',
  'Biryani, Indian',
  'Sushi, Japan',
  'Nasi Lemak, Malaysian'
];

final List _path2 = [
  'lib/images/burger.jpg',
  'lib/images/steak.jpg',
  'lib/images/nasgor.jpg',
  'lib/images/biryani.jpg',
  'lib/images/sushi.jpg',
  'lib/images/nasilemak.jpg',
];

class _MealDealState extends State<MealDeal> {
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
              itemCount: _title2.length,
              itemBuilder: (context, index) => SeeAllCard(title: _title2[index],
                  alamat: _alamat2[index],
                  description: _description2[index],
                  path: _path2[index],),
            ),
          )
        ],
      ),
    );
  }
}