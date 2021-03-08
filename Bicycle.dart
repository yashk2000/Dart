class Bicycle {
  int cadence;
  int speed;
  int gear;

  Bicycle(this.cadence, this.speed, this.gear);

 @override
 String toString() => 'Bicycle: $speed kmph';
}

void main() {
  var bike = Bicycle(3, 8, 7);
  print(bike);
}
