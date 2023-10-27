import 'package:hive_flutter/adapters.dart';
part 'data.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject{
  @HiveField(0)
  String header='';
  @HiveField(1)
  String taskText='';
  @HiveField(2)
  bool isCompleted=false;
  @HiveField(3)
  Priority priority=Priority.normal;
}

enum Priority{
  low,normal,high
}