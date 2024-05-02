import 'package:flutter/material.dart';

class UpperRow extends StatelessWidget {
  const UpperRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm_I2frPqb5sUeuAr-5C3vuzS-xSt8AMZqzA&s'),
        ),
        Container(
          height: 40,
          width: 300,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border.symmetric(
              horizontal: BorderSide(),
              vertical: BorderSide(),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const Align(
              alignment: Alignment.centerLeft,
              child: Text("What's on your mind?")),
        ),
        const Icon(Icons.camera_alt_rounded)
      ],
    );
  }
}
