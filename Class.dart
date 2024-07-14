class Account {
  int accountNumber;
  String name;
  int balance;
  
  Account(this.accountNumber, this.name, this.balance);
  
  void deposit(int money) {
    balance += money;
    print("$money 원이 입금되었습니다.");
  }
  
  void withdraw(int money) {
    if (balance - money < 0) {
      print("잔액이 부족해 출금할 수 없습니다.");
    }
    else {
      balance -= money;
      print("$money 원이 출금되었습니다.");
    }
  }
  
  void checkBalance() {
    print("현재 잔액은 $balance 원입니다.");
  }
}

class MaxLimitAccount extends Account {
  int maxBalance;
  
  MaxLimitAccount(this.maxBalance, int accountNumber, String name, int balance)
     : super(accountNumber, name, balance);
  
  @override
  void deposit(int money) {
    if (balance + money > maxBalance) {
      print("저축 가능한 최대 한도를 초과했습니다.");
    }
    else {
      super.deposit(money);
    }
  }
}
        
        
void main() {
  Account person1 = Account(1111, 'Kim', 0);
  
  person1.deposit(1000);
  person1.checkBalance();
  person1.withdraw(500);
  person1.checkBalance();
  
  MaxLimitAccount person2 = MaxLimitAccount(10000, 2222, 'Lee', 5000);
  
  person2.deposit(3000);
  person2.deposit(3000);
  person2.checkBalance();
}