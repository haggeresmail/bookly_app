import 'package:blookyapp/core/utils/api_service.dart';
import 'package:blookyapp/features/home/Data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
    getIt.get<ApiService>(), 
  ));
}