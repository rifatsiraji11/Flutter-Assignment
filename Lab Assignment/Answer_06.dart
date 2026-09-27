class BankAccount
{
  double balance;
  BankAccount(this.balance);

  void deposite(double amount)
  {
    balance = balance + amount;
    print("Deposite: $amount");
    print("Balance: $balance");
  }

  void withdraw(double amount)
  {
    if(amount <= balance)
    {
      balance = balance - amount;
      print("Withdraw: $amount");
      print("Balance: $balance");
    }
    else
    {
      print("Insuffociant Balance");
    }
  }
}


void main()
{
  BankAccount account = BankAccount(5000);

  account.deposite(2000);
  account.withdraw(3000);
  account.withdraw(500);
}