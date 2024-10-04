import 'dart:io';

class Vehicle {
  String name;
  int speed;

  Vehicle(this.name, this.speed);

  void move() {}
}

class Car extends Vehicle {
  Car(String name, int speed) : super(name, speed);

  @override
  void move() {
    print("The car $name moves fast on roads at $speed km/h.");
  }
}

class Bike extends Vehicle {
  Bike(String name, int speed) : super(name, speed);

  @override
  void move() {
    print("The bike $name moves swiftly through traffic at $speed km/h.");
  }
}

void main() {
  print("Do you want to ceate a Car or Bike?");
  String? vehicleType = stdin.readLineSync()?.trim().toLowerCase();

  print("Enter the vehicle's name: ");
  String? name = stdin.readLineSync();

  print("Enter the vehicle's speed (in km/h):");
  int? speed = int.parse(stdin.readLineSync()!);

  if (vehicleType == 'car') {
    Car car = Car(name!, speed!);
    car.move();
  } else if (vehicleType == 'bike') {
    Bike bike = Bike(name!, speed!);
    bike.move();
  } else {
    print("Invalid vehicle type.");
  }
}
