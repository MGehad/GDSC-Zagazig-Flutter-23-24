import 'package:flutter/material.dart';
import '../widgets/my_notification_icon.dart';
import '../widgets/youtube_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const YoutubeTitle(),
        actions: const [
          Icon(Icons.cast_outlined, color: Colors.white, size: 28),
          SizedBox(width: 20),
          MyNotificationIcon(),
          SizedBox(width: 20),
          Icon(Icons.search_sharp, color: Colors.white, size: 28),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
