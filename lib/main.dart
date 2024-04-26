import 'package:flutter/material.dart';
import 'homepage.dart';
import 'home.dart';
import 'discovery.dart';
import 'bookmark.dart';
import 'topfoodie.dart';
import 'profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/home': (context) => Home(),
        '/discovery': (context) => const Discovery(),
        '/bookmark': (context) => const Bookmark(),
        '/topfoodie': (context) => const TopFoodie(),
        '/profile': (context) => const Profile(),
      },
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}