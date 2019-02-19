// $dart helloword.dart
void main() {
  print('Hello World!');

  int a = 2;
  double b = 3.14;
  print("variaty：");
  print(a);
  print(b);

  // final声明的值只能进行一次赋值，作用与const类似
  final int c = 20;
  const d = 40;
  print("final&const：");
  print(c);
  print(d);

  // dart中的数组
  var list1 = List<int>();
  list1.add(1);
  list1.add(2);
  var list2 = [4, 5];
  print("List：");
  for (var item in list1) {
    print(item);
  }
  for (var item in list2) {
    print(item);
  }

  // Set 同 JS
  var set = Set<String>();
  set.add('foo');
  set.add('bar');
  print("Set：");
  print(set.contains('foo'));

  // Map
  var map = Map<String, int>();
  map['foo'] = 1;
  print("Map");
  print(map['foo']);
  var map2 = {'foo': 2, 'bar': 4};
  print(map2['bar']);
  print(map2.toString()); // 等价于print(map2);

  // function
  int foo(int x, int y) {
    return x + y;
  }
  print("Function");
  print(foo(1, 2));

  // Class
  var point=Point2d(1, 2);
  point.x = 4;
  print("Class");
  print(point);
}

class Point2d {
  int x;
  int y;
  Point2d(this.x, this.y);

  @override
  String toString() {
    return "point2d{x=$x, y=$y}";
  }
}
