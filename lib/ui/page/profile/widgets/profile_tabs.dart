import 'package:flutter/material.dart';
import 'package:youtube/ui/page/profile/widgets/videos.dart';

class ProfileTabs extends StatefulWidget {
  const ProfileTabs({super.key});

  @override
  State<ProfileTabs> createState() => _ProfileTabsState();
}

class _ProfileTabsState extends State<ProfileTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.grey,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Videos'),
                Tab(text: 'Shorts'),
                Tab(text: 'Live'),
              ],
            ),
            backgroundColor: Colors.black,
          ),
        ),
        body: const TabBarView(
          children: [
            VideosPage(),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
