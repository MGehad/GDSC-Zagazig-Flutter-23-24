import 'package:flutter/material.dart';
import '../models/user_model.dart';

class StoryWidget extends StatelessWidget {
  final UserModel model;

  const StoryWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(500)),
          child: CircleAvatar(
            backgroundImage: AssetImage(model.accImage),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                border: Border.all(width: 3, color: Colors.white),
              ),
            ),
          ),
        ),
        Text(model.accName)
      ],
    );
  }
}
