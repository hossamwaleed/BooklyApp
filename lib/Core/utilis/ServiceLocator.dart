import 'package:bookly_app1/Core/utilis/Api_Helper.dart';
import 'package:bookly_app1/Features/Home/data/repos/HomeRepoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final instance =GetIt.instance;

void setupServiceLocator(){
  
  instance.registerSingleton<ApiService>(ApiService(Dio()));
instance.registerSingleton<HomeRepoImpl>(HomeRepoImpl(instance.get<ApiService>()));

}