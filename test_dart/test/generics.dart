import 'dart:convert';

void main() {}

class gen<T> {
  final T name;
  final T age;

  const gen(this.age, this.name);
}

/// Simple Code::: Interface
/// 
// First Interface
abstract class myInterface<T> {
  //intailizing interface methods
  int fraction();
  String userName();
}

// Second Interface
abstract class yourInterface<T> {
  //intailizing interface methods
  int addition();
  int userAge();
}

// Interface class
class build<T> implements myInterface<T>, yourInterface<T> {
  @override
  int fraction() => 10;

  @override
  String userName() => 'IamPrank';

  @override
  int addition() => 10 + 7;

  @override
  int userAge() => 1;
}
/// Simple code:::: Inheritance
/// 
// Inheritance
abstract class myInheritance<T> {
  //intailizing inheritance methods
  double turnRight();
  double moveTop();
}

// Inheritance class 
class Game<T> extends myInheritance<T> {
  @override
  double moveTop() {
    var steps = 20.2;
    return steps;
  }

  @override
  double turnRight() {
    var turn = 10.6;
    return turn;
  }
}


/// Simple Code ::: Mixin
/// 
// Mixin
mixin myMixin<T> {
  // Intailizing mixin method
  void userName() => print('IamPrank');
  void userAge() => print('Kill Object');
}

// Mixin class
class KillObject<T> with  myMixin<T>{
  // I don't need to override any method. I can just use it out of the box
}