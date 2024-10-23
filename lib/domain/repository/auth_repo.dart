import 'package:dartz/dartz.dart';
import 'package:medical_cabinet/data/models/signin_req_params.dart';

abstract class AuthRepository {
  Future<Either> signIn(SigninReqParams signInReq);
}
