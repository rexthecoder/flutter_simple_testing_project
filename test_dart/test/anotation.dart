void main() {
  House myTest;
  myTest = House(100, 'Asamaoh');
  var game = myTest.copyWith(myAge: 50);
  print(game);
}

class House {
// Calling my final class
  final int myAge;
  final String name;
// Making my class as anotation
  const House(this.myAge, this.name);

  // Using call to do operator overload
  int call(int a, int b) => b - a;

// Cloning a class
  House copyWith({int myAge, String name}) =>
      House(myAge ?? this.myAge, name ?? this.name);
  @override
  String toString() => '$name, $myAge';
}

class Girl {
  final String name;
  final int age;
  // Making my class anotation class
  const Girl(this.age, this.name);

  // Cloning my class
  Girl copyWith({age, name}) => Girl(age ?? this.age, name ?? this.name);
  @override
  String toString() => '$name, $age';
}
