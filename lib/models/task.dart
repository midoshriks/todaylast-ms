import 'dart:ffi';

class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  // method doChange box
  void doChange() {
    isDone = !isDone;
  }
}
