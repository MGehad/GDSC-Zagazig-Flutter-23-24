import 'dart:io';

void main() {
  String? input;
  print("Please enter a String:");

  input = stdin.readLineSync();

  input = input!.replaceAll(" ", "");
  print(input);
}
