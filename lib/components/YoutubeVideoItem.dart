import 'package:flutter/material.dart';
import 'package:youtubeui_tutorial/models/YoutubeVideoData.dart';

class YoutubeVideoItem extends StatelessWidget {
  final YoutubeVideoData youtubeVideoData;
  const YoutubeVideoItem({Key? key, required this.youtubeVideoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(this.youtubeVideoData.image),
            borderRadius: BorderRadius.circular(10),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              this.youtubeVideoData.channelImage))),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          this.youtubeVideoData.title,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              this.youtubeVideoData.channelName,
                              style: TextStyle(color: Color(0xffadb5bd)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.fiber_manual_record,
                              color: Color(0xffadb5bd),
                              size: 13,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              this.youtubeVideoData.dateUploaded,
                              style: TextStyle(color: Color(0xffadb5bd)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
