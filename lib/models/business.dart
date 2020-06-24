abstract class Business {
  void buyBusiness();
  void sellBusiness();
  int earnMoney();
}

class LemonadeStand implements Business {
  @override
  void buyBusiness() {
    // Subtract money from wallet
    // other things happen
    // TODO: implement buyBusiness
  }

  @override
  int earnMoney() {
    // TODO: implement earnMoney
    // Stream of earning value
    // Also evilness
    throw UnimplementedError();
  }

  @override
  void sellBusiness() {
    // TODO: implement sellBusiness
  }

}
