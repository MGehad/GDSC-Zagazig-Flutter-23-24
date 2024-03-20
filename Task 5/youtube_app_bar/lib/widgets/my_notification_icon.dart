import 'package:flutter/material.dart';

class MyNotificationIcon extends StatelessWidget {
  const MyNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.notifications_none_outlined,
            color: Colors.white, size: 30),
        Row(
          children: [
            const SizedBox(width: 15),
            Container(
              width: 22,
              height: 17,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "9+",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
