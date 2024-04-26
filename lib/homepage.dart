import 'package:flutter/material.dart';
import 'home.dart';
import 'discovery.dart';
import 'bookmark.dart';
import 'topfoodie.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexNow = 0;
  
  final List<Widget> _pages = [
    Home(),
    Discovery(),
    Bookmark(),
    TopFoodie(),
    Profile(),
  ];

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[indexNow], // Show the selected page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Discovery",
            icon: Icon(Icons.place_outlined),
          ),
          BottomNavigationBarItem(
            label: "Bookmark",
            icon: Icon(Icons.bookmark_outline),
          ),
          BottomNavigationBarItem(
            label: "Top Foodie",
            icon: Icon(Icons.emoji_events_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_outline),
          )
        ],
        currentIndex: indexNow,
        selectedItemColor: Colors.amber,
        onTap: (int index) {
          setState(() {
            indexNow = index;
          });
        },
      ),
    );
  }
}