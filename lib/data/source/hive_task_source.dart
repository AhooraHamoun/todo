import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/data.dart';
import 'package:todo/data/source/source.dart';

class HiveTaskDataSource implements DataSource<TastEntity>{
  final Box<TastEntity> box;

  HiveTaskDataSource(this.box);
  @override
  Future<TastEntity> createOrUpdate(TastEntity data) async{
    if(data.isInBox){
      data.save();
    }else{
      data.id=await box.add(data);
    }
    return data;
  }

  @override
  Future<void> delete(TastEntity data) async{
    return data.delete();
  }

  @override
  Future<void> deleteById(id){
    return box.delete(id);
  }

  @override
  Future<void> deletedAll() {
    return box.clear();
  }

  @override
  Future<TastEntity> findById(id) async{
    return box.values.firstWhere((element) => element.id==id);
  }

  @override
  Future<List<TastEntity>> getAll({String searchKeyword=''}) async{
    return box.values.toList();
  }

}