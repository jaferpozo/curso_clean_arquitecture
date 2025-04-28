import 'package:clean_arquitecture/feactures/prodcut/data/datasource/producto_data_source.dart';
import 'package:get/get.dart';

import 'data/repositories/producto_repository_impl.dart';
import 'domain/repositories/producto_respository.dart';
import 'domain/use_cases/obtener_producto.dart';

class Di extends Bindings {
  static ini() {
    Get.lazyPut<ObtenerProducto>(
      () => ObtenerProducto(repository: Get.find()),
      fenix: true,
    );


    Get.lazyPut<ProductoRepository>(
      () => ProductoRepositoryImpl(productoDataSource: Get.find()),
      fenix: true,
    );





    Get.lazyPut<ProductoDataSource>(
          () => ProductoDataSourceDio(),
      fenix: true,
    );





  }

  @override
  void dependencies() {
    ini();
  }
}
