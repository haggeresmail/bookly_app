

import 'package:dio/dio.dart';


abstract class Failure{
  final String errMessage;

const  Failure(this.errMessage);

}
class ServerFailure extends Failure{
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError( DioException dioError){
    switch(dioError.type){
      
      case DioExceptionType.connectionTimeout:
        // TODO: Handle this case.
        return ServerFailure("connection Time Out with api server");
      case  DioExceptionType.sendTimeout:
        // TODO: Handle this case.
         return ServerFailure( "send Time Out with api server");
      case  DioExceptionType.receiveTimeout:
       return ServerFailure( "receive Time Out with api server");
        // TODO: Handle this case.
      case  DioExceptionType.badCertificate:
      return ServerFailure("receive Time Out with api server");
      
        // TODO: Handle this case.
      case  DioExceptionType.badResponse:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
        // TODO: Handle this case.
      case  DioExceptionType.cancel:
      return ServerFailure("request with api server cancelled");
        // TODO: Handle this case.
      case  DioExceptionType.connectionError:
       return ServerFailure("connectionError with api server cancelled");
        // TODO: Handle this case.
      case  DioExceptionType.unknown:
      if(dioError.message!.contains('SocketException')){
        return ServerFailure("no internet");
      }
       return ServerFailure(" error plz,try again later");
      default:
       return ServerFailure("Oops there was an error");
        // TODO: Handle this case.
    }
  
      
      
    }
    factory ServerFailure.fromResponse(int statuescode , dynamic response){
      if (statuescode==400|| statuescode==401 || statuescode==403){
        return ServerFailure(response['error']['message']);
      }
      else if(statuescode==404){
        return ServerFailure("method not found");
      }
      else if(statuescode==500){
        return ServerFailure("internal server error");
      }
      else {
        return ServerFailure("Oops there was an error");
      }


    }
}