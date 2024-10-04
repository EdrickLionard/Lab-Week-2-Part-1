class ATM {
  double _balance = 0.0;

  ATM([double initialBalance = 0.0]) {
    _balance = initialBalance;
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited : \$${amount}');
    } else {
      print('Insufficient balance or invalid amount');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawed : \$${amount}');
    } else {
      print('Insufficient balance or invalid amount');
    }
  }

  void checkBalance() {
    print('Current Balance : \$${_balance}');
  }
}

void main() {
  ATM atm = ATM(1000.0);
  atm.checkBalance();

  atm.deposit(500.0);
  atm.checkBalance();

  atm.withdraw(300.0);
  atm.checkBalance();

  atm.withdraw(1500.0);
  atm.checkBalance();
}
