import 'package:flutter/material.dart';
import 'package:youtube/ui/page/profile/widgets/like_url.dart';
import 'package:youtube/ui/page/profile/widgets/profile_tabs.dart';
import 'package:youtube/ui/page/profile/widgets/user_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('タイトル', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1578496479914-7ef3b0193be3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FtcGxlfGVufDB8fDB8fHww'),
                  width: double.infinity,
                  height: 100, // Adjust the height to your desired value
                  fit: BoxFit.cover,
                ),
              ),
              const UserCard(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('ITエンジニアです。よろしくお願いします。',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
              ),
              const SizedBox(height: 8),
              const LikeUrl(),
              const SizedBox(height: 8),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite_outline, color: Colors.grey),
                      Text('Subscribe', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                    ],
                  )),
              const SizedBox(height: 8),
              Flexible(child: ProfileTabs()),
            ],
          ),
        ));
  }
}
