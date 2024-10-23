import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medical_cabinet/core/network/constants/api_urls.dart';
import 'package:medical_cabinet/core/network/dio_client.dart';
import 'package:medical_cabinet/data/models/signin_req_params.dart';
import 'package:medical_cabinet/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signIn(SigninReqParams signInReq);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signIn(SigninReqParams signInReq) async {
    try {
      var response =
          await sl<DioClient>().post(ApiUrls.logIn, data: signInReq.toMap());
      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
