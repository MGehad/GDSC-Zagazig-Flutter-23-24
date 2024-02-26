void main() {
  double? totalPrice;
  Map<String, double> cart = {"Meat": 5, "Chicken": 2};
  Map<String, double> prices = {"Meat": 2000};

  totalPrice = calculateTotalPrice(cart, prices);
  if (totalPrice != null) print("The total price is \$$totalPrice");
}

double? calculateTotalPrice(
    Map<String, double> cart, Map<String, double> prices) {
  double totalPrice = 0;
  if (cart.isEmpty || prices.isEmpty) {
    return null;
  } else {
    cart.forEach((item, quantity) {
      if (prices.containsKey(item)) {
        totalPrice += quantity * prices[item]!;
      } else {
        print("The $item is not found!!");
      }
    });
  }
  return totalPrice;
}
