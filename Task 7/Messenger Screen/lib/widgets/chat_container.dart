import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ChatContainer extends StatelessWidget {
  final UserModel model;

  const ChatContainer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage(model.accImage),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      model.accName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      model.lastMessage!.text,
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade800),
                    )
                  ],
                )
              ],
            ),
            Center(
              child: Text(
                model.lastMessage!.date,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
