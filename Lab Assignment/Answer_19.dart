abstract class Payment
{
  void pay();
}

class cashPayment extends Payment
{
  @override
  void pay()
  {
    print("Payment made by cash");
  }
}

class cardPayment extends Payment
{
  @override
  void pay()
  {
    print("Payment made by card");
  }
}

void main()
{
  cashPayment cash = cashPayment();
  cardPayment card = cardPayment();

  cash.pay();
  card.pay();
}