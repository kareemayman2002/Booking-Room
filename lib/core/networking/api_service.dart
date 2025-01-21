import 'package:dio/dio.dart';

class ApiService{
  final Dio dio;
  ApiService(this.dio);
  String _baseUrl="";
   Future<Map<String,dynamic>> get()async{
    Response respose =await dio.get("path");
     return respose.data;
  }


}