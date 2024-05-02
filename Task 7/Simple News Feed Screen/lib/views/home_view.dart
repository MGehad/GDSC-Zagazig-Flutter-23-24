import 'package:flutter/material.dart';
import 'package:simple_news_feed_screen/widgets/post_card.dart';
import 'package:simple_news_feed_screen/widgets/upper_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Social",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          UpperRow(),
          SizedBox(height: 15.0,),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
        ],
      ),
    );
  }
}
