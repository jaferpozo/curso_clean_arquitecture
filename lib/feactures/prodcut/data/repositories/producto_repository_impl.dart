
import '../../domain/entities/producto_entity.dart';
import '../../domain/mappers/productomodel_to_product_entitie.dart';
import '../../domain/repositories/producto_respository.dart';
import '../../domain/request/producto_insert_request.dart';
import '../datasource/producto_data_source.dart';
import '../models/product_model.dart';

class ProductoRepositoryImpl implements ProductoRepository{

  ProductoDataSource productoDataSource;

  ProductoRepositoryImpl({required this.productoDataSource});

  @override
  List<ProductoEntity> obtenerProductos() {
    // TODO: implement obtenerProductos
    throw UnimplementedError();
  }

  @override
  Future<ProductoEntity> obterProductoPorId(int idProducto)  async{

    ProductoModel productoModel=await productoDataSource.getObtenerProd();

    return ProductoModelToProductoEntities.toEntiTies(productoModel);

  }

  @override
  Future<bool> insertarProducto({required ProductoInsertRequest request}) {
    // TODO: implement insertarProducto
    throw UnimplementedError();
  }



}