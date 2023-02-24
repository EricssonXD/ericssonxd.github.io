import 'package:flutter/material.dart';

void main() {
  final stopwatch = Stopwatch()..start();
  List list = [];
  for (int i = 0; i < 100000; i++) {
    list.add(mapTest(i));
  }
  debugPrint(list.length.toString());
  debugPrint('This code took ${stopwatch.elapsed}');
}

mapTest(int index) {
  return {
    "child": Container(),
    "id": index,
    "name": "My Name is ${index.toString()}",
  };
}

classTest(int index) {
  return _TestClass(
    child: Container(),
    id: index,
    name: "My Name is ${index.toString()}",
  );
}

class _TestClass {
  final String name;
  final int id;
  final Widget child;
  _TestClass({
    required this.name,
    required this.child,
    required this.id,
  });
}
