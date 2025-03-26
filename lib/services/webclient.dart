import 'package:flutter_webapi_first_course/services/http_interceptors.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http/http.dart' as http;

class WebClient {
  static const String url = "http://192.168.100.146:3000/";
  http.Client client =
      InterceptedClient.build(interceptors: [LoggingInterceptor()], requestTimeout: const Duration(seconds: 5));

  // static const String url = "http://192.168.100.146:3000/";

  // http.Client client =
  //     InterceptedClient.build(interceptors: [LoggingInterceptor()]);
}
