
import '../entities/producto_entity.dart';
import '../repositories/producto_respository.dart';

class ObtenerProducto{

  ProductoRepository repository;

  ObtenerProducto({required this.repository});

  Future<ProductoEntity> call() async {
    return await repository.obterProductoPorId(1);
  }

}