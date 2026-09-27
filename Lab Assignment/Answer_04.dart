class Car
{
  Car.manual()
  {
    print("This car is a manual car");
  }

  Car.automatic()
  {
    print("This car is a automatic car");
  }
}

void main()
{
  Car manualCar = Car.manual();
  Car automaticCar = Car.automatic();
}