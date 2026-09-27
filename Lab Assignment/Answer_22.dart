mixin LoggerMixin
{
  void logMessage(String message)
  {
    print("Log: $message");
  }
}

class User with LoggerMixin
{
  String name;
  User(this.name);
}

class Product with LoggerMixin
{
  String productName;
  Product(this.productName);
}

void main()
{
  User user = User("Rifat");
  Product product = Product("Laptop");

  user.logMessage("User created: ${user.name}");
  product.logMessage("Product created: ${product.productName}");
}