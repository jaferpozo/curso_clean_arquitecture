import 'package:clean_arquitecture/feactures/prodcut/domain/entities/producto_entity.dart';
import 'package:get/get.dart';

import '../../../domain/use_cases/obtener_producto.dart';

class ProductoController extends GetxController {

  ObtenerProducto _obtenerProducto=Get.find();

    Rx<ProductoEntity> productoEntity=ProductoEntity(id: 0, precio: 0, nombre: "").obs;

  RxBool peticionServer=false.obs;


  Future<void> obtenerProductos() async{



      peticionServer(true);
    productoEntity.value=  await _obtenerProducto();

    print("id ${productoEntity.value.id}");
      print("nombre ${productoEntity.value.nombre}");
      print("precio ${productoEntity.value.precio}");
      peticionServer(false);

      peticionServer.value=false;


  }



}