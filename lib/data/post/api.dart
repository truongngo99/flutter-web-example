import 'package:flutter_web_example/data/response/user/user_response.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

abstract class Api {
  Method get getListUser => GET('/user?limit=10');
  Future<UserResponse> getUser();
}

class ApiUrl extends BaseUrl {
  @override
  String dev() => 'https://dummyapi.io/data/api';

  @override
  String prod() {
    // TODO: implement prod
    throw UnimplementedError();
  }

  @override
  String stg() {
    // TODO: implement stg
    throw UnimplementedError();
  }
}
