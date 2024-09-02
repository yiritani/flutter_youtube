import 'package:flutter/material.dart';

class LikeUrl extends StatefulWidget {
  const LikeUrl({super.key});

  @override
  State<LikeUrl> createState() => _LikeUrlState();
}

class _LikeUrlState extends State<LikeUrl> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('https://example.com',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey)),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('and 6 more likes',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}
