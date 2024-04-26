// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_uts_ambw_c14210124/mealdeal.dart';
import 'card.dart';
import 'mostpopular.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
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

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.amber,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 8.0, bottom: 8.0, right: 0.0),
                      child: Icon(
                        Icons.search,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Search for restaurants...",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset("lib/images/noodle.jpg"),
                Positioned(
                  child: Text(
                    "Thai Style",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  bottom: 40,
                  left: 20,
                ),
                Positioned(
                  child: Text(
                    "12 Places",
                    style: TextStyle(fontSize: 13),
                  ),
                  bottom: 20,
                  left: 20,
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 4,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 4,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 4,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 4,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20.0, right: 20.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                    },
                    child: Container(
                        child: Text(
                    "See all",
                    style: TextStyle(color: Colors.teal[400], fontSize: 16),
                  ))),
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: _title.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CardMenu(
                  title: _title[index],
                  alamat: _alamat[index],
                  description: _description[index],
                  path: _path[index],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20.0, right: 20.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meal Deals",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => MealDeal()),
                      );
                    },
                    child: Container(
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.teal[400], fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: _title.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CardMenu(
                  title: _title2[index],
                  alamat: _alamat2[index],
                  description: _description2[index],
                  path: _path2[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
