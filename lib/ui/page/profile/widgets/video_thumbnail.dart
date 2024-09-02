import 'package:flutter/material.dart';

class VideoThumbnail extends StatefulWidget {
  final int videoIndex;
  final Function onVideoTapped;
  final Function onLeaderClicked;
  const VideoThumbnail(
      {super.key,
      required this.videoIndex,
      required this.onVideoTapped,
      required this.onLeaderClicked});

  @override
  State<VideoThumbnail> createState() => _VideoThumbnailState();
}

class _VideoThumbnailState extends State<VideoThumbnail> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onVideoTapped(widget.videoIndex);
      },
      highlightColor: Colors.pink,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1578496479914-7ef3b0193be3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FtcGxlfGVufDB8fDB8fHww'),
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('タイトル${widget.videoIndex}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const Row(
                    children: [
                      Text('244 views',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey)),
                      Text('-',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey)),
                      Text('2 days ago',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey)),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  widget.onLeaderClicked(widget.videoIndex);
                },
                child: const Icon(Icons.more_vert, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
