import 'package:dio/dio.dart';

class ApiService{
  final Dio dio;

  ApiService(this.dio);
   get()async{
    var respose = dio.get("path");
    // return returnspose.dat
  }


}