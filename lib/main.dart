import 'package:flutter/material.dart';
import 'package:youtubeui_tutorial/constants/constants.dart';
import 'package:youtubeui_tutorial/pages/home.dart';

main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Youtube UI Clone using Flutter",
    home: HomePage(),
    theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: ScaffoldBackgroundColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        )),
  ));
}
