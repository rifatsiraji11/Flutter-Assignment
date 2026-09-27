class Employee
{
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);
}

void main()
{
  List<Employee> employees = [
    Employee("Rifat", "Software Enginner", 50000),
    Employee("Zaman", "Manager", 60000),
    Employee("John", "Developer", 45000),
  ];

  for(Employee employee in employees)
  {
    print("Name: ${employee.name}");
    print("Designation: ${employee.designation}");
    print("Salary: ${employee.salary}");
    print("========================");
  }
}