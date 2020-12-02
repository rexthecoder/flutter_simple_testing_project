void main() {
  B test = B();

  print(test.answer());
}
class A {
  int call(int a, int c) => a ~/ c;
}
class B extends A {
  int answer() {
    final getfromUser = super.call(10, 5);
    return getfromUser;
  }
}
