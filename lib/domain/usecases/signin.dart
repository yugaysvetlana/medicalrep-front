import 'package:dartz/dartz.dart';
import 'package:medical_cabinet/core/usecase/usecase.dart';
import 'package:medical_cabinet/data/models/signin_req_params.dart';
import 'package:medical_cabinet/domain/repository/auth_repo.dart';
import 'package:medical_cabinet/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninReqParams> {
  @override
  Future<Either> call({SigninReqParams? param}) async {
    return sl<AuthRepository>().signIn(param!);
  }
}
