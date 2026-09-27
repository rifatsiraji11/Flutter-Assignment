abstract class Shape
{
  double calculateArea();
}

class Square extends Shape
{
  double side;
  Square(this.side);

  @override
  double calculateArea()
  {
    return side * side;
  }
}


void main()
{
  Square square = Square(12.5);
  print("Area od square: ${square.calculateArea()}");
}