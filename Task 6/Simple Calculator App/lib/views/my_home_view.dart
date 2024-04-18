import 'package:flutter/material.dart';
import '../helper/functions.dart';

class MyHomeView extends StatefulWidget {
  String screen = '';

  MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Text(
                        widget.screen,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 25,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        widget.screen = '';
                      });
                    },
                    backgroundColor: Colors.white,
                    child: const Text(
                      "Clear",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    buildButton(txt: "7"),
                    buildButton(txt: "8"),
                    buildButton(txt: "9"),
                    buildButton(txt: "÷"),
                  ],
                ),
                Row(
                  children: [
                    buildButton(txt: "4"),
                    buildButton(txt: "5"),
                    buildButton(txt: "6"),
                    buildButton(txt: "×"),
                  ],
                ),
                Row(
                  children: [
                    buildButton(txt: "1"),
                    buildButton(txt: "2"),
                    buildButton(txt: "3"),
                    buildButton(txt: "−"),
                  ],
                ),
                Row(
                  children: [
                    buildButton(txt: "0"),
                    buildButton(txt: "."),
                    buildButton(txt: "+"),
                    buildButton(txt: "="),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton({required String txt}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              switcher(txt);
            });
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          child: Text(
            txt,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void switcher(String txt) {
    switch (txt) {
      case '÷':
      case '×':
      case '−':
      case '+':
        widget.screen = '${widget.screen}\n$txt\n';
        break;
      case '=':
        widget.screen = Functions().calculate(widget.screen).toString();
        break;
      default:
        widget.screen = '${widget.screen}$txt';
    }
  }
}
