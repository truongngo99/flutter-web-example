import 'package:flutter_web_example/data/post/api.dart';
import 'package:flutter_web_example/data/response/user/user_response.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class ApiImpl extends BaseAPI with Api {
  @override
  Future<UserResponse> getUser() async {
    return UserResponse.fromJson(await sendApiRequest(getListUser));
  }
}
