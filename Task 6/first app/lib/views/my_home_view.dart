import 'package:first_task/views/second_view.dart';
import 'package:flutter/material.dart';

class MyHomeView extends StatefulWidget {
  static String id = 'home screen';

  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWsk2Eld0pbFFILNTSZeyZvBZxtXCCkm-HcQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4m7wx0tprA5kJdRalQQV3fEB72tZS8kCWVg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI6AwtOM5_sr2qFqgaAC1XEXKhetm8OhCfNg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaqGxzYGxXTNxD_ce7GEHD9AYx11T-yi_nHw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2gLAQxB0Vz1Xf-5-ttx1ODFF4seMdovqGcA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiOG6JVEHtj5g14TMu8vlQo_oxxukkCOvvpw&s'
  ];

  int imgIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Task',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Welcome To My App",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, spreadRadius: 0, blurRadius: 40),
                ],
              ),
              child: Image.network(
                images[imgIndex],
                //  height: MediaQuery.of(context).size.height * .4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (imgIndex < images.length - 1) {
                        imgIndex++;
                      } else {
                        imgIndex = 0;
                      }
                    });
                  },
                  child: const Text('Change the image'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SecondView.id);
                  },
                  child: const Text('New Screen'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
