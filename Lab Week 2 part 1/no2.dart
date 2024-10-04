// Parent Class: BankAccount
class BankAccount {
  // Private attribute
  double _balance = 0.0;

  // Constructor to initialize balance
  BankAccount(this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance or invalid amount.');
    }
  }

  // Method to check balance
  void checkBalance() {
    print('Current balance: \$${_balance.toStringAsFixed(2)}');
  }
}

// Subclass: SavingsAccount
class SavingsAccount extends BankAccount {
  double interestRate;

  // Constructor: Initialize balance and interest rate
  SavingsAccount(double balance, this.interestRate) : super(balance);

  // Method to apply interest to the balance
  void applyInterest() {
    double interest = _balance * (interestRate / 100);
    deposit(interest);
    print(
        'Interest applied: \$${interest.toStringAsFixed(2)} at rate ${interestRate}%');
  }
}

void main() {
  // Create a BankAccount object
  BankAccount account = BankAccount(500.0);
  account.checkBalance();
  account.deposit(200.0);
  account.withdraw(100.0);
  account.checkBalance();

  // Create a SavingsAccount object
  SavingsAccount savings = SavingsAccount(1000.0, 5.0);
  savings.checkBalance();
  savings.applyInterest();
  savings.checkBalance();
}
