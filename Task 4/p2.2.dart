abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}
