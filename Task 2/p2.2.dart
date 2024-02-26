void main() {
  List<double> ratings = [5, 1, 3, 5, 0, 1, 2.3];

  double? averageRating = findAverageRating(ratings);

  if (averageRating != null) {
    print("The Average Rating is ${averageRating.toStringAsFixed(2)}");
  }
}

double? findAverageRating(List<double> ratings) {
  if (ratings.isEmpty) {
    return null;
  } else {
    double sumOfRates = 0;

    for (double rate in ratings) {
      sumOfRates += rate;
    }

    return sumOfRates / ratings.length;
  }
}
