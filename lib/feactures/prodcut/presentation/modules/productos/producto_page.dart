import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'producto_controller.dart';

class ProductoPage extends GetView<ProductoController> {
  @override
  Widget build(BuildContext context) {
    print("paso x el build");
    return Scaffold(
      body:  Column(

        mainAxisAlignment: MainAxisAlignment.center,
          children: [

       Center(child:    Obx(
             () =>
         controller.peticionServer.value
             ? CircularProgressIndicator()
             : ElevatedButton(
           onPressed: () => controller.obtenerProductos(),
           child: Text("Cargar datos"),
         ),
       ),),


           Obx(()=>
               Text(controller.productoEntity.value.nombre)
           )
        ],),








    );
  }
}
