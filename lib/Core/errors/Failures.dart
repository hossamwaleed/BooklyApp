import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure{
  final String errmessage;
   Failure(this.errmessage);
}
 class ServerFailure extends Failure{
  ServerFailure(super.errmessage);
  
factory ServerFailure.fromdioException(DioException dioexception){
switch(dioexception.type){
  case DioExceptionType.connectionTimeout:
    return ServerFailure("Connetion Times Out");
  case DioExceptionType.sendTimeout:
  return ServerFailure("Send Times Out");
    // TODO: Handle this case.
  case DioExceptionType.receiveTimeout:
  return ServerFailure("Recieve Times Out");
    // TODO: Handle this case.
  case DioExceptionType.badCertificate:
return ServerFailure("there was a problem with certificate");
    // TODO: Handle this case.
  case DioExceptionType.badResponse:
  return ServerFailure.frombadresponse(dioexception.response!.statusCode!, dioexception.response!.data);
    // TODO: Handle this case.
  case DioExceptionType.cancel:
  return ServerFailure("request to api is cancel");
    // TODO: Handle this case.
  case DioExceptionType.connectionError:
  return ServerFailure("No internet connection");
    // TODO: Handle this case.
  case DioExceptionType.unknown:
   return ServerFailure("oops there was un excepcted problem");

   default:
   return ServerFailure("there was an error");
}
}
 factory ServerFailure.frombadresponse(int statuscode, dynamic response){
  if(statuscode ==400 || statuscode==401 || statuscode==403){
    return ServerFailure(response ["error"]["message"]);
  }else if (statuscode ==404){
    return ServerFailure("method not found");
  }else if (statuscode==500){
    return ServerFailure("there was an error with server");
  }
  
  else{
    return ServerFailure("oops there was a problem");
  }
}
 }