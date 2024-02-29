import 'dart:math';

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle implements Shape {
  double height;
  double width;

  Rectangle({required this.height, required this.width});

  @override
  double calculateArea() => height * width;

  @override
  double calculatePerimeter() => 2 * (height + width);
}

class Square implements Shape {
  double length;

  Square({required this.length});

  @override
  double calculateArea() => length * length;

  @override
  double calculatePerimeter() => 4 * length;
}

class Circle implements Shape {
  double radius;

  Circle({required this.radius});

  @override
  double calculateArea() => pi * radius * radius;

  @override
  double calculatePerimeter() => 2 * pi * radius;
}

class Triangle implements Shape {
  double height;
  double width;
  double length;

  Triangle({required this.height, required this.width, required this.length});

  @override
  double calculateArea() {
    double s = calculatePerimeter() / 2;
    return sqrt(s * (s - height) * (s - width) * (s - length));
  }

  @override
  double calculatePerimeter() => width + height + length;
}
