enum lazyWorkerId { H2, H3, H4, H5 }
void main() {
  final wordkerId = lazyWorkerId.H2;
  switch (wordkerId) {
    case lazyWorkerId.H2:
      print('I am her');
      break;
    case lazyWorkerId.H3:
      print('Kill me now');
      break;
    case lazyWorkerId.H4:
      print('Catch my vibes');
      break;
    case lazyWorkerId.H5:
      print('Catch my sicky');
      break;
    default:
      print('I am natural');
  }
}

class TestClass {
  String myname;
  String age;

  // Simple construtors
  TestClass({this.myname, this.age});

  // Getter
  String get total => age + myname;

  set total(value) {
    return value;
  }
}
