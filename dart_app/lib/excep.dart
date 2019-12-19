class DepositException implements Exception {
  String errorMessage() {
    return "不能少与0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositException();
  }
}
