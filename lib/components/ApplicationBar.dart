import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget {
  const ApplicationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/ytlogo.png",
            width: 100,
            height: 22,
          ),
          Row(
            children: [
              buildApplicationBarIcon(Icons.movie_creation_outlined),
              buildApplicationBarIcon(Icons.search),
              buildApplicationBarIcon(Icons.notifications),
            ],
          )
        ],
      ),
    );
  }

  Widget buildApplicationBarIcon(IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
