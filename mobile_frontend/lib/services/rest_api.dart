import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:mobile_frontend/models/User.dart';

class Api{
  Dio dio;
  String baseURL="http://10.0.2.2:3000/";
  int connectTimeout=5000, receiveTimeout=3000;

  Api(){
    dio = Dio();
    dio.options.baseUrl = this.baseURL;
    //dio.options.connectTimeout = this.connectTimeout; //5s
    //dio.options.receiveTimeout = this.receiveTimeout;
  }

  Future<bool> register(var dataUser) async {
    Response response;
    response = await dio.post(
      "register",
      data: {
        "email": "myemail@gmail.com",
        "nom": "khouas",
        "prenom": "aymen",
        "matricule": "161731063111",
        "password": "azerty",
        "annee": 3,
        "specialite": "ISIL",
        "faculte": "Departement info",
        "num": "3",
        "num_groupe": "1"
        },
      //responseType : ResponseType.JSON,
      options: Options(method:"GET"),
    );
    print(response.data);
    print(response.headers);
    print(response.request);
    print(response.statusCode);
  }

}
