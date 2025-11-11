import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  
  const Plan({this.name = '', this.tasks = const []});

  // Completed tasks count
  int get completedCount => tasks.where((task) => task.complete).length;

  // Progress message
  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';
}
