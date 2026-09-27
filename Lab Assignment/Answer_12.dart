class Person
{
  String name;
  int age;

  Person(this.name, this.age);

  void displayEmployeeInfo()
  {
    print("Name: $name");
    print("Age: $age");
  }
}

class Employee extends Person
{
  double salary;

  Employee(String name, int age, this.salary): super(name,age);

  void displayInfo()
  {
    displayInfo();
    print("Salary: $salary");
  }
}

void main()
{
  Employee employee = Employee("Rifat", 22, 50000);
  employee.displayEmployeeInfo();
}