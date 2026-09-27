class Customer
{
  final String name;
  final int id;
  final String address;

  const Customer(this.name, this.id, this.address);
}

void main()
{
  const Customer customer = Customer("Rifat", 225, "Sylhet");
  
  print("Name: ${customer.name}");
  print("ID: ${customer.id}");
  print("Address: ${customer.address}");
}