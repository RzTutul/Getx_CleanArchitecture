import 'package:get/get.dart';

abstract class ResponseDecoder {
  static decode(Response response) {
    if (response.hasError) {
      return Future.error(response.status);
    } else {
      return response.body;
    }
  }
}
