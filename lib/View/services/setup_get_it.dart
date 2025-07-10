
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/model/models/api/dio_consumer.dart';


final getIt = GetIt.instance;

void setupGetIt()  {
  // dio
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiConsumer>(DioConsumer(
     getIt<Dio>(),
  ));
}
