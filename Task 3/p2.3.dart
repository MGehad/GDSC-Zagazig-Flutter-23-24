class Employee {
  String name;
  int age;
  double salary;
  int yearOfExperience;
  Employee(
      {required this.name,
      required this.age,
      required this.yearOfExperience,
      required this.salary});
}

class Manager extends Employee {
  String department;
  Manager(
      {required super.name,
      required super.age,
      required super.yearOfExperience,
      required super.salary,
      required this.department});

  void printInfo() {
    print(
        "Name: $name\nAge: $age\nYears of experiences: $yearOfExperience\nSalary:$salary\nDepartment: $department");
  }
}

class Worker extends Employee {
  String task;
  Manager manager;

  Worker(
      {required super.name,
      required super.age,
      required super.yearOfExperience,
      required super.salary,
      required this.task,
      required this.manager});

  void printInfo() {
    print(
        "Name: $name\nAge: $age\nYears of experiences: $yearOfExperience\nSalary:$salary\nTask: $task");
  }
}
