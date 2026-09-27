class Shape
{
  double area()
  {
    return 0;
  }
}

class Reactangle extends Shape
{
  double length;
  double width;

  Reactangle(this.length, this.width);

  @override
  double area()
  {
    return length * width;
  }
}

class Circle extends Shape
{
  double radius;

  Circle(this.radius);

  @override
  double area()
  {
    return 3.1416 * radius * radius;
  }
}

void main()
{
  Reactangle rectangle = Reactangle(15, 10);
  Circle circle = Circle(7);

  print("Reactangle: ${rectangle.area()}");
  print("Circle: ${circle.area()}");
}