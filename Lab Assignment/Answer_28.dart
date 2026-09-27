class Guest
{
  String name;
  String phone;
  Guest(this.name, this.phone);
}

class Room
{
  int roomNumber;
  String type;
  double price;

  Room(this.roomNumber, this.type, this.price);
}

class Reservation
{
  Room room;
  Guest guest;
  int nights;
  Reservation(this.room, this.guest, this.nights);

  double calculatetotal()
  {
    return room.price * nights;
  }

  void displayInfo()
  {
    print("Name: ${guest.name}");
    print("Phone: ${guest.phone}");
    print("Room Number: ${room.roomNumber}");
    print("Room Type: ${room.type}");
    print("Price per nights: ${room.price}");
    print("Number of nights: $nights");
    print("Total Cost: ${calculatetotal()}");

  }
}


void main()
{
  Guest guest = Guest("Rifat", "018252");
  Room room = Room(202, "Luxury", 7500);
  Reservation reservation = Reservation(room, guest, 3);
  reservation.displayInfo();

}


