class Box<T> 
{
  T value;
  Box(this.value);

  void display()
  {
    print("Value: $value");
  }
}

void main()
{
  Box<int> intbox = Box(100);
  intbox.display();

  Box<String> stringbox = Box("Rifat Zaman");
  stringbox.display();

  Box<double> doublebox = Box(25.56);
  doublebox.display();
}