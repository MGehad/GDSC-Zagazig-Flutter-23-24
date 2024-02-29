class BankAccount {
  int accountNumber;
  String accountName;
  double balance;

  BankAccount(
      {required this.accountName,
      required this.accountNumber,
      required this.balance});

  void deposit(double money) {
    if (money > 0) {
      balance += money;
      print("You deposit: \$$money and your balance is: \$$balance");
    } else {
      print("Enter a valid value");
    }
  }

  void withdraw(double money) {
    if (money < balance && money > 0) {
      balance -= money;
      print("You withdraw: \$$money and your balance is: \$$balance");
    } else {
      print("you don't have enough money to withdraw");
    }
  }

  void printBalance() {
    print("Hello $accountName\nYour current balance is: \$$balance");
  }
}

void main() {
  BankAccount a1 = new BankAccount(
      accountName: "Mohamed Gehad Hussien",
      accountNumber: 52442012,
      balance: 2463.5);
  a1.deposit(200);
  a1.withdraw(2000);
  a1.printBalance();
  BankAccount a2 = new BankAccount(
      accountName: "Hussien Mohamed Gehad",
      accountNumber: 52442012,
      balance: 1533.75);
  a2.deposit(200);
  a2.deposit(200);
  a2.withdraw(4000);
  a2.printBalance();
}
