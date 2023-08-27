import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

enum Method { get, post, put, patch, delete }

class ApiService {
  factory ApiService() => _;

  const ApiService._instance();

  static const _ = ApiService._instance();

  Future<String> request(
    String requestPath, {
    Method method = Method.get,
    Map<String, List<String>> queryParametersAll = const {},
    Map<String, String> headers = const {"Content-Type": "application/json"},
    Map<String, Object?> body = const {},
  }) async {
    final uri = Uri.parse(requestPath);

    try {
      Response response = await switch (method) {
        Method.get => get(uri, headers: headers),
        Method.post => post(uri, headers: headers, body: body),
        Method.put => put(uri, headers: headers, body: body),
        Method.patch => patch(uri, headers: headers, body: body),
        Method.delete => delete(uri, headers: headers),
      }
          .timeout(const Duration(seconds: 10));

      return switch (response.statusCode) {
        < 200 => throw Error.throwWithStackTrace(
            "${response.reasonPhrase}",
            StackTrace.current,
          ),
        >= 200 && < 300 => response.body,
        >= 300 && < 400 => throw Error.throwWithStackTrace(
            "${response.reasonPhrase}",
            StackTrace.current,
          ),
        >= 400 && < 500 => throw Error.throwWithStackTrace(
            "Client Error",
            StackTrace.current,
          ),
        >= 500 => throw Error.throwWithStackTrace(
            "Server Error",
            StackTrace.current,
          ),
        _ => throw Error.throwWithStackTrace(
            "Unexpected Error",
            StackTrace.current,
          ),
      };
    } on TimeoutException catch (e, stackTrace) {
      debugPrint("$e\n$stackTrace");
      throw Error.throwWithStackTrace(
        "Check your network connection!",
        StackTrace.current,
      );
    } catch (e, stackTrace) {
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }
}
