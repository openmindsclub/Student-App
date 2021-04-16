import 'package:dio/dio.dart';

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
      data: dataUser,
    );

    if (response.statusCode == 200){
      return true;
    } else {
      return false;
    }
  }

  Future<Response> login(var dataLogin) async {
    print(dataLogin);
    Response response;
    response = await dio.post(
      "login",
      data: dataLogin,
      //responseType : ResponseType.JSON,
    );
    return response;
  }

}
