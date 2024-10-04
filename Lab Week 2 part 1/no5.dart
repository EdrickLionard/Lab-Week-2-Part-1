class Animal {
  void sound() {
    print("Hewan membuat suara");
  }
}

void eat() {
  print("Hewan sedang makan");
}

class Dog extends Animal {
  @override
  void sound() {
    print("Anjing menggonggong: Woof Woof!");
  }

  @override
  void eat() {
    print("Anjing sedang makan tulang");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Kucing mengeong: Meow Meow!");
  }

  @override
  void eat() {
    print("Kucing sedang makan ikan");
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.sound();
  dog.eat();

  cat.sound();
  cat.eat();
}
