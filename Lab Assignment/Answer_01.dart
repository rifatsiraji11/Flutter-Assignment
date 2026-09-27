class Student
{
    String? name;
    int? id;
    double? cgpa;

    Student(this.name, this.id, this.cgpa);

    void displayInfo()
    {
        print("Name: $name");
        print("ID: $id");
        print("CGPA: $cgpa");
    }
}

void main()
{
    Student s1 = Student("Rifat", 1047, 3.50);
    s1.displayInfo();
}