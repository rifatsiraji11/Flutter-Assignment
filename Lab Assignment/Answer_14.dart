class Notification
{
  String displayNotification()
  {
    return "This is a notification";
  }
}

class EmailNotification extends Notification
{
  @override
  String displayNotification()
  {
    return "You have received a new e-mail";
  }
}

class smsNotification extends Notification
{
  @override
  String displayNotification()
  {
    return "You have received a new SMS";
  }
}

void main()
{
  Notification notification = Notification();
  EmailNotification email = EmailNotification();
  smsNotification sms = smsNotification();

  print(notification.displayNotification());
  print(email.displayNotification());
  print(sms.displayNotification());
}