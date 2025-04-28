

import '../entities/producto_entity.dart';
import '../request/producto_insert_request.dart';

abstract class ProductoRepository{

  List<ProductoEntity>  obtenerProductos();

  Future<ProductoEntity>  obterProductoPorId(int idProducto);

  Future<bool> insertarProducto({required ProductoInsertRequest request});

}