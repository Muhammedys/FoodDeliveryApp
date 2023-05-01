import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  late Map<String, String> _mainHeaders;
  final String appBaseUrl;
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = '';
    _mainHeaders = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authoriztion': 'Bearer $token',
    };
  }
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
