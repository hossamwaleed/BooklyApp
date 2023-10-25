import 'package:bookly_app1/Core/errors/Failures.dart';
import 'package:bookly_app1/Core/utilis/Api_Helper.dart';
import 'package:bookly_app1/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app1/Features/Home/data/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiservice;
  HomeRepoImpl(this.apiservice);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks()async {
   try{var data = await apiservice.get(endpoint: "volumes?Filtering=newest&q=programming");
   List<BookModel> bookslist =[];
   for( var item in data["items"]){
    bookslist.add(BookModel.fromJson(item));
   

   }
    return right(bookslist);
   }catch(e){
    if (e is DioException){
 return left(ServerFailure.fromdioException(e));
    }
   return left(ServerFailure(e.toString()));
   }
  }

@override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{
     try{var data = await apiservice.get(endpoint: "volumes?Filtering=newest&q=programming");
   List<BookModel> bookslist =[];
   for( var item in data["items"]){
    bookslist.add(BookModel.fromJson(item));
   

   }
    return right(bookslist);
   }catch(e){
    if (e is DioException){
 return left(ServerFailure.fromdioException(e));
    }
   return left(ServerFailure(e.toString()));
   }
  
  }

}