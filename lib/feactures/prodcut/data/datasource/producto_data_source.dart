import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;


import '../models/product_model.dart';

abstract class ProductoDataSource {
  Future<ProductoModel>  getObtenerProd();
}

class ProductoDataSourceDio implements  ProductoDataSource {

  @override
  Future<ProductoModel> getObtenerProd() async {
    final dio = Dio();
    Response response;
   // response = await dio.get('https://pokeapi.co/api/v2/pokemon/ditto');

     response = await dio.get('https://dummyjson.com/products');
    log(response.data.toString());
    // The below request is the same as above.

    return productoModelFromJson(jsonEncode(response.data));
  }

}


class ProductoDataSourceHttp implements  ProductoDataSource {
  @override
  Future<ProductoModel> getObtenerProd() async{

    var url = Uri.https('dummyjson.com', '/products');

    // Hacemos la solicitud
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Éxito: decodificamos el JSON
      return productoModelFromJson(response.body);
    } else {
      // Error: lanzamos una excepción o imprimes el error
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Failed to load products');
    }


  }

}

class ProductoDataSourceMoks implements  ProductoDataSource {
  @override
  Future<ProductoModel> getObtenerProd() {
    // TODO: implement getObtenerProd
    throw UnimplementedError();
  }

}


