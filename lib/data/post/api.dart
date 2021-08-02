import 'package:teq_flutter_core/teq_flutter_core.dart';

abstract class Api {}

class ApiUrl extends BaseUrl {
  @override
  String dev() {
    // TODO: implement dev
    throw UnimplementedError();
  }

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
