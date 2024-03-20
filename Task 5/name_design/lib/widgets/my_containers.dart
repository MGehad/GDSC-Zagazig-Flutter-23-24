import 'package:flutter/material.dart';

class MyContainers {
  Container createContainer() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.deepPurple,
    );
  }

  List<Container> createListOfContainers(int numberOfContainers) {
    List<Container> listOfContainers = [];
    for (int i = 0; i < numberOfContainers; i++) {
      listOfContainers.add(
        Container(
          width: 50,
          height: 50,
          color: Colors.deepPurple,
        ),
      );
    }
    return listOfContainers;
  }
}
