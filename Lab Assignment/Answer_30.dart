abstract class Person
{
  String name;
  int id;

  Person(this.name, this.id);

  void displayInfo();
}

class Student extends Person
{
  String department;
  double _cgpa;
  Student(String name, int id, String department, double cgpa) 
    : department = department, _cgpa = cgpa, super(name, id);

  double get cgpa => _cgpa;

  void updateCgpa(double cgpa)
  {
    _cgpa = cgpa;
  }

  @override
  void displayInfo()
  {
    print("Name: $name");
    print("Student ID: $id");
    print("Department: $department");
    print("CGPA: $_cgpa");
  }
}

class Course
{
  String courseCode;
  String courseName;
  double credit;

  Course(this.courseCode, this.courseName, this.credit);

  void displayCourse()
  {
    print("Course Code: $courseCode");
    print("Course Name: $courseName");
    print("Course Credit: $credit");
  }
}

class EnrollMent
{
  Student student;
  Course course;

  EnrollMent(this.student, this.course);

  void displayEnrollMent()
  {
    print("Name: ${student.name}");
    print("Course Name: ${course.courseName}");
    print("Course Code: ${course.courseCode}");
  }
}


void main()
{
  Student student = Student("Rifat", 1047, "CSE", 2.8);
  Course course = Course("CSE-3212", "Smartphone Application Development", 1.5);

  EnrollMent enrollment = EnrollMent(student, course);

  print("Student Information ========");
  student.displayInfo();

  print("Course Information ==========");
  course.displayCourse();

  print("Enrollment Information =====");
  enrollment.displayEnrollMent();

  print("Update CGPA ================");
  student.updateCgpa(3.35);
  print("Update CGPA: ${student.cgpa}");
}