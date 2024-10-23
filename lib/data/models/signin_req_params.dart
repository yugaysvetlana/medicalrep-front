// ignore_for_file: public_member_api_docs, sort_constructors_first

class SigninReqParams {
  final String userName;
  final String password;

  SigninReqParams({required this.userName, required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "userName": userName,
      "password": password,
    };
  }
}
