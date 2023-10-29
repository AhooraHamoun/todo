import 'package:todo/data/source/source.dart';

class Repository<T> implements DataSource{
  final DataSource<T> localDataSource;

  Repository(this.localDataSource);
  @override
  Future createOrUpdate(data) {
    return localDataSource.createOrUpdate(data);
  }

  @override
  Future<void> delete(data) {
    return localDataSource.delete(data);
  }

  @override
  Future<void> deleteById(id) {
    return deleteById(id);
  }

  @override
  Future<void> deletedAll() {
    return deletedAll();
  }

  @override
  Future findById(id) {
    return findById(id);
  }

  @override
  Future<List> getAll({String searchKeyword=''}) {
    return getAll(searchKeyword: searchKeyword);
  }
  
}