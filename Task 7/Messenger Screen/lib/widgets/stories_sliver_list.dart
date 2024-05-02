import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'my_story_widget.dart';
import 'story_widget.dart';

class StoriesSliverList extends StatelessWidget {
  final List<UserModel> models;

  const StoriesSliverList({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: models.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: MyStoryWidget(accImage: 'assets/avatar1.jpg'),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: StoryWidget(
                  model: models[index],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
