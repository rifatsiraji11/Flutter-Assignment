class Book
{
  String title;
  String author;
  bool _isIssued;

  Book(this.title, this.author) : _isIssued = false;

  bool get isIssued => _isIssued;

  void issueBook()
  {
    _isIssued = true;
  }

  void returnBook()
  {
    _isIssued = false;
  }
}

class Member
{
  String name;
  int numberId;

  Member(this.name, this.numberId);
}

class studentMember extends Member
{
  String department;
  studentMember(String name, int numberId, this.department) : super(name, numberId);
}


class Library
{
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book)
  {
    books.add(book);
  }

  void addMember(Member member)
  {
    members.add(member);
  }

  void isIssueBook(Book book, Member member)
  {
    if(!book.isIssued)
    {
      book.issueBook();
      print("${book.title} issue to ${member.name}");
    }
    else
    {
      print("${book.title} is already issue");
    }
  }

  void returnBook(Book book)
  {
    if(book.isIssued)
    {
      book.returnBook();
      print("${book.title} returned successfully");
    }
    else
    {
      print("${book.title} is not issued");
    }
  }
}

void main()
{
  Library library = Library();

  Book book1 = Book("Dart Programming", "Join Smith");
  Book book2 = Book("OOP Concept", "Robert Martin");

  studentMember member = studentMember("Siraji", 2115, "CSE");

  library.addBook(book1);
  library.addBook(book2);
  library.addMember(member);
  library.isIssueBook(book1, member);
  library.isIssueBook(book2, member);
  library.returnBook(book1);
  library.returnBook(book2);
}