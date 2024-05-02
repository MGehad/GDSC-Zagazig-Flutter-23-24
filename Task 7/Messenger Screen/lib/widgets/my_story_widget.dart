import 'package:flutter/material.dart';

class MyStoryWidget extends StatelessWidget {
  final String accImage;

  const MyStoryWidget({super.key, required this.accImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(500)),
              child: CircleAvatar(
                backgroundImage: AssetImage(accImage),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    border: Border.all(
                        width: 3,
                        color: Colors.white,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            const Text('My Story')
          ],
        ),
        Positioned(
          right: 10,
          bottom: 25,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.add,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
