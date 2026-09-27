class Company
{
  String name;
  double basicsalary;

  Company(this.name, this.basicsalary);

  double calculatesalary()
  {
    return basicsalary;
  }
}

class Manager extends Company
{
  double bonus;

  Manager(String name, double basicsalary, this.bonus) : super(name, basicsalary);

  @override
  double calculatesalary()
  {
    return basicsalary + bonus;
  }
}

class Developer extends Company
{
  double payovertime;

  Developer(String name, double basicsalary, this.payovertime) : super(name, basicsalary);

  @override
  double calculatesalary()
  {
    return basicsalary + payovertime;
  }
}


void main()
{
  Manager manager = Manager("John", 50000, 10000);
  Developer developer = Developer("Rifat", 70000, 15000);

  print("Manager Salary: ${manager.calculatesalary()}");
  print("Developer Salary: ${developer.calculatesalary()}");
}