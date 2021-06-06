import 'package:flutter/material.dart';
import 'package:youtubeui_tutorial/components/YoutubeVideoItem.dart';
import 'package:youtubeui_tutorial/models/YoutubeVideoData.dart';

class YoutubeRecommendedSection extends StatelessWidget {
  final List<YoutubeVideoData> youtubeVideos = [
    YoutubeVideoData(
        title: "How to build a Hackiontosh Step-by-Step Tutorial",
        image: "https://i3.ytimg.com/vi/Gaosub7FRf4/maxresdefault.jpg",
        dateUploaded: "One Day Ago",
        channelName: "Free Code Camp",
        channelImage:
            "https://yt3.ggpht.com/ytc/AAUvwnifaQZvAunS0OFb2y_cieoVjLCVjqQW8Exf3BC1gg=s88-c-k-c0x00ffffff-no-rj"),
    YoutubeVideoData(
        title: "React for Beginners #5 - State & useState",
        image: "https://i3.ytimg.com/vi/vMeR1aaNhtk/maxresdefault.jpg",
        dateUploaded: "One Day Ago",
        channelName: "Tech With Tim",
        channelImage:
            "https://yt3.ggpht.com/ytc/AAUvwnhIFsTY7d1nrpmQ7RWafOXqQIWBVtPePQvJ6JliOg=s48-c-k-c0x00ffffff-no-rj"),
    YoutubeVideoData(
        title: "Meet The World's Newest Grandmaster",
        image: "https://i3.ytimg.com/vi/3q_9dSoFbkQ/maxresdefault.jpg",
        dateUploaded: "One Day Ago",
        channelName: "GothamChess",
        channelImage:
            "https://yt3.ggpht.com/ytc/AAUvwnjK9ju2n00aJ-nfO2bgesYbyyeEJb2RBnkpnYUkcA=s48-c-k-c0x00ffffff-no-rj"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Text(
                "Recommended",
                style: TextStyle(fontSize: 20),
              ),
              ...List.generate(
                  this.youtubeVideos.length,
                  (index) => YoutubeVideoItem(
                      youtubeVideoData: this.youtubeVideos[index]))
            ],
          ))
        ],
      ),
    );
  }
}
