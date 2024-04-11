import 'package:correadrawerv2/movies.dart';
import 'package:correadrawerv2/profile.dart';
import 'package:correadrawerv2/spaceEvenly.dart';
import 'package:correadrawerv2/spaceAround.dart';
import 'package:correadrawerv2/spaceBetween.dart';
import 'package:flutter/material.dart';
import 'package:correadrawerv2/end.dart';
import 'contact.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String spaceEvenly = SpaceEvenly.routeName;
  static const String spaceAround = SpaceAround.routeName;
  static const String spaceBetween = SpaceBetween.routeName;
  static const String end = End.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        spaceEvenly: (context) => SpaceEvenly(),
        spaceAround: (context) => SpaceAround(),
        spaceBetween: (context) => SpaceBetween(),
        end: (context) => End(),
      },
      home: Inicio(),
    );
  }
}
