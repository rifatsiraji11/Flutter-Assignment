class Flyable
{
  void Fly()
  {
    print("Flying...");
  }
}

class Swimmable
{
  void Swim()
  {
    print("Swimming...");
  }
}

class Duck implements Flyable, Swimmable
{
  @override
  void Fly()
  {
    print("Duck is flying");
  }

  @override
  void Swim()
  {
    print("Duck is swimming");
  }
}

void main()
{
  Duck duck = Duck();
  duck.Fly();
  duck.Swim();
}