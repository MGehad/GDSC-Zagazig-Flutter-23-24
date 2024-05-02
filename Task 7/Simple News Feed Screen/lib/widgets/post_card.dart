import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name"),
                    Text("2h"),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .62,
                ),
                const Icon(Icons.remove_rounded)
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text("  datadatadatadata"),
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8_ydaSfJtbCm-ckl1HY82GdIf0GY9-Nykuw&s',
              width: double.maxFinite,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text('60.8K'),
                    )
                  ],
                ),
                Text("60 comments - 10 shares")
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Love'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.mark_as_unread_sharp),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Comment'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Share'),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
