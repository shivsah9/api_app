import 'dart:io';

import 'package:api_app/app/core/config/http_config.dart';

import '../../core/config/api.dart';
import '../model/riddle_response/riddle_response.dart';

class RiddleService {
  static Future<RiddleResponse?> getRiddles() async {
    try {
      var res = await Api().get(
        HttpConfig.getRiddles,
        addRequestInterceptor: true,
      );
      var response = RiddleResponse.fromMap(res.data as Map<String, dynamic>);
      return response;
    } catch (err) {
      return null;
    }
  }
}
