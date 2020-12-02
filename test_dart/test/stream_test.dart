import 'dart:math';


void main(){
  var house = randomNumbers();
  print(house);
}
Stream<int> randomNumbers() async* {
// 1.

  final random = Random();

  for (var i = 0; i < 100; ++i) {
// 2.

    await Future.delayed(Duration(seconds: 3)); // 3.

    yield random.nextInt(50) + 1;

// 4.

  }
}
