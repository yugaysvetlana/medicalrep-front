import 'package:get_it/get_it.dart';
import 'package:medical_cabinet/core/network/dio_client.dart';
import 'package:medical_cabinet/data/repository/auth.dart';
import 'package:medical_cabinet/data/source/auth_api_service.dart';
import 'package:medical_cabinet/domain/repository/auth_repo.dart';
import 'package:medical_cabinet/domain/usecases/signin.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  //Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //UseCases
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
