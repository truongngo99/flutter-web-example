import 'package:dio/dio.dart';

class HttpInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['app-id'] = '6109fdeefbea969db2dc3910';
    return super.onRequest(options, handler);
  }
}
