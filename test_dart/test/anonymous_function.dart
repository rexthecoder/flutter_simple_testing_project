void main() {
  /// Anonymous Function
  ///
  ///This example illustrate Anonymous Function.
  ///it sounds like a variable found of a function but a faster way of resprenting function in dart
  final myName = (String name) {
    return 'My name is $name';
  };

  final stories = (String myFavoriteBook) {
    var author = 'I am Prank';

    return '$myFavoriteBook, probably the author will be $author';
  };

  /// You have to learn to braing the paramaters  it should take
  /// You go for final if you feel okay with that
  int Function(int) workers = (int ages) {
    return ++ages;
  };

  /// Normal Functions
  String myAge(String userAge) {
    return 'You are now $userAge';
  }

  /// Calling the functions
  print(myName('Rexford'));
  print(myAge('20'));
  print(myName.runtimeType);
  print(workers(10));
  print(stories('Who will join me'));
}
