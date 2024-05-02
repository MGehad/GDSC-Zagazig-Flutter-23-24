import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'chat_container.dart';

class ChatsSliverList extends StatelessWidget {
  final List<UserModel> models;

  const ChatsSliverList({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: models.length,
      itemBuilder: (context, index) => ChatContainer(model: models[index]),
    );
  }
}
