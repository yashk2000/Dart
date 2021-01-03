class Bicycle {
  int cadence;
  int speed;
  int gear;

  Bicycle(this.cadence, this.speed, this.gear);

 @override
 String toString() => 'Bicycle: $speed mph';
}

void main() {
  var bike = Bicycle(2, 0, 1);
  // creating a Bicycle object, bike with cadence=2, speed=0 and gear=1
  print(bike);
}
