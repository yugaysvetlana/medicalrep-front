import 'package:dartz/dartz.dart';
import 'package:medical_cabinet/data/models/signin_req_params.dart';
import 'package:medical_cabinet/data/source/auth_api_service.dart';
import 'package:medical_cabinet/domain/repository/auth_repo.dart';
import 'package:medical_cabinet/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signIn(SigninReqParams signInReq) async {
    return sl<AuthApiService>().signIn(signInReq);
  }
}
