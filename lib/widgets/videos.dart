import 'package:flutter/material.dart';
import 'package:youtube/widgets/video_samnale.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ElevatedButton(
                  onPressed: () {
                    _onItemTapped(0);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _selectedIndex == 0 ? Colors.white : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  child: Text('Latest',
                      style: TextStyle(
                          fontSize: 12,
                          color: _selectedIndex == 0
                              ? Colors.black
                              : Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ElevatedButton(
                  onPressed: () {
                    _onItemTapped(1);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _selectedIndex == 1 ? Colors.white : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  child: Text('Popular',
                      style: TextStyle(
                          color: _selectedIndex == 1
                              ? Colors.black
                              : Colors.white)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _onItemTapped(2);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _selectedIndex == 2 ? Colors.white : Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
                child: Text('Oldest',
                    style: TextStyle(
                        color:
                            _selectedIndex == 2 ? Colors.black : Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return VideoSamnale(videoIndex: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
