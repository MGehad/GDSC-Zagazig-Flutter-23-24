import 'dart:io';

class Laptop {
  String brand;
  int model;
  int ram;

  Laptop({required this.brand, required this.model, required this.ram});

  double? CalculatePrice() {
    double price = 0;

    switch (brand) {
      case 'Hp':
        price += 400;
        break;
      case 'Dell':
        price += 500;
        break;
      case 'Lenovo':
        price += 700;
        break;
      default:
        price += 200;
        break;
    }

    if (model > 2020) {
      price += 2000;
    } else if (model > 2015) {
      price += 1000;
    } else {
      price += 500;
    }

    if (ram > 8) {
      price += 1000;
    } else if (ram > 4) {
      price += 500;
    } else {
      price += 250;
    }

    return price;
  }

  void printData() {
    print(
        "Brand: $brand\nModel: $model\nRam: $ram\nPrice: \$${CalculatePrice()}\n--------------");
  }
}

void main() {
  Laptop lap1 = new Laptop(brand: "Hp", model: 2010, ram: 2);
  lap1.printData();
  Laptop lap2 = new Laptop(brand: "Dell", model: 2023, ram: 8);
  lap2.printData();
  Laptop lap3 = new Laptop(brand: "Nothing", model: 2000, ram: 16);
  lap3.printData();

  /* 
  print("Please enter the brand:");
  String? brand = stdin.readLineSync();
  print("Please enter the model:");
  int? model = stdin.readByteSync();
  print("Please enter the ram:");
  int? ram = stdin.readByteSync();
  Laptop lap = new Laptop(brand: brand!, model: model, ram: ram);
  lap.printData();
  */
}
