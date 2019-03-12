class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;//getter 
  int gear;

  Bicycle(this.cadence, this.gear);

 @override
 String toString() => 'Bicycle: $speed mph';
}

void main() {
  Bicycle cycle = new Bicycle(2, 1);
  print(cycle.speed);// prints 0
  cycle.speed = 44;// This will not work as there is no setter.
}
