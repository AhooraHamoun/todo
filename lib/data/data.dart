import 'package:hive_flutter/adapters.dart';
part 'data.g.dart';

@HiveType(typeId: 0)
class TastEntity extends HiveObject{
  int id=-1;
  @HiveField(0)
  String header='';
  @HiveField(1)
  String taskText='';
  @HiveField(2)
  bool isCompleted=false;
  @HiveField(3)
  Priority priority=Priority.normal;
}

@HiveType(typeId: 1)
enum Priority{

  @HiveField(0)
  low,
  
  @HiveField(1)
  normal,
  
  @HiveField(2)
  high
}