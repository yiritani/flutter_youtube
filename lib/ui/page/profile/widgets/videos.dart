import 'package:flutter/material.dart';
import 'package:youtube/ui/page/profile/widgets/order_button.dart';
import 'package:youtube/ui/page/profile/widgets/video_thumbnail.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  // 子ウィジェットに渡した関数でstateがどうなるのか確認
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onVideoTapped(int index) {
    print('Tapped ${index}');
  }

  void _onLeaderClicked(int index) {
    print('Tapped more ${index}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: OrderButton(
              onItemTapped: _onItemTapped,
              selectedIndex: _selectedIndex,
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                // 全然よくわからんがこうしないとタップ時の色がつかない
                return Material(
                  color: Colors
                      .transparent, // Set to transparent to allow ripple effect
                  child: InkWell(
                    onTap: () => _onVideoTapped(index),
                    onLongPress: () => _onLeaderClicked(index),
                    child: VideoThumbnail(
                      videoIndex: index,
                      onVideoTapped: _onVideoTapped,
                      onLeaderClicked: _onLeaderClicked,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
