import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YoutubeTitle extends StatelessWidget {
  const YoutubeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ),
            const FaIcon(FontAwesomeIcons.youtube, color: Colors.red, size: 28),
          ],
        ),
        const Text(
          " YouTube",
          style: TextStyle(
            fontFamily: 'Youtube',
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
