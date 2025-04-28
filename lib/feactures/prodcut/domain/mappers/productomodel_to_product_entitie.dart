
import '../../data/models/product_model.dart';
import '../entities/producto_entity.dart';


class ProductoModelToProductoEntities{


  static ProductoEntity toEntiTies(ProductoModel productoModel){



    ProductoEntity producto=ProductoEntity(
        id: productoModel.products[0].id,
        nombre: productoModel.products[0].description,
        precio: productoModel.products[0].price
    );

    return producto;

  }

}