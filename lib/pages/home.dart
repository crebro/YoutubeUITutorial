import 'package:flutter/material.dart';
import 'package:youtubeui_tutorial/components/ApplicationBar.dart';
import 'package:youtubeui_tutorial/components/YoutubeRecommendedSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ApplicationBar(),
          Expanded(child: YoutubeRecommendedSection())
        ],
      )),
    );
  }
}
