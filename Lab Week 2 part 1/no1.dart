class Student {
  String name;
  int studentID;
  double grade;

  Student(this.name, this.studentID, this.grade);

  void displayInfo() {
    print('Name: $name');
    print('Student ID: $studentID');
    print('Grade: $grade');
  }

  bool hasPassed() {
    return grade >= 70;
  }
}

void main() {
  Student student = Student('Leonard', 112233, 85);

  student.displayInfo();

  if (student.hasPassed()) {
    print('The student has passed.');
  } else {
    print('The student has not passed.');
  }
}
