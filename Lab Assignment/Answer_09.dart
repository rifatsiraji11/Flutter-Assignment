class Teamparature
{
  double _temp = 0;

  set temp(double celcius)
  {
    _temp = celcius;
  }

  double get temp
  {
    return (_temp * 9 / 5)+32;
  }
}
 
void main()
{
  Teamparature teamparature = Teamparature();
  teamparature.temp = 30;
  print("Teamparature in Farhenheit: ${teamparature.temp}");
}