class Account {
  String owner;
  int balance;

  Account(this.owner, this.balance);

  //이체를 수행하는 메서드
  void transfer(Account account, int amount) {
    if (balance < amount) { // 잔액보다 이체 금액이 크면 잔액이 부족합니다.
      throw Exception('잔액이 부족합니다.');
    }
    account.balance -= amount; // account.balance = account.balance-amount // 수취인 계좌
    balance -= amount; // 송금자 계좌

  } // else 구문 그렇지 않으면 잔액에서 금액만큼 뺀다. 접근가능하니까.

}

