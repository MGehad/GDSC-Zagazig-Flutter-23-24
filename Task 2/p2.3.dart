void main() {
  List<double> grades = [50, 86, 70, 30, 20, 0, 1, 70, 99, 20, 77, 56, 12];
  print(analyzeGrades(grades));
}

Map<String, double>? analyzeGrades(List<double> grades) {
  Map<String, double> statistics;
  if (grades.isEmpty) {
    return null;
  } else {
    double numberOfStudents = 0;
    double sumOfGrades = 0;
    double numberOfValedictorians = 0;
    double numberOfFaileds = 0;

    for (double grade in grades) {
      numberOfStudents++;
      sumOfGrades += grade;
      if (grade < 40) {
        numberOfFaileds++;
      } else if (grade > 85) {
        numberOfValedictorians++;
      }
    }

    statistics = {
      "Number of students": numberOfStudents,
      "\nAverage grade": (sumOfGrades / numberOfStudents),
      "\nNumber of Valedictorian students": numberOfValedictorians,
      "\nNumber of Failed students": numberOfFaileds
    };
    return statistics;
  }
}
