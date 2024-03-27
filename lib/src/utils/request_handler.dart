import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:onebusaway_api_client_library/src/enums/request_type_enum.dart';

typedef RequestStatusMessage = String;

const Map<int, RequestStatusMessage> RequestStatusCode = {
  200: "Success",
  400:
      "The request could not be understood due to an invalid request parameter or some other error",
  401: "The application key is either missing or invalid",
  404: "The specified resource was not found",
  500: "A service exception or error occurred while processing the request",
};

class RequestHandler {
  static Future<Map<String, dynamic>> sendRequest(
    String url,
    RequestType requestType, {
    String apiKey = "TEST",
    Map<String, String>? headers,
    dynamic body,
  }) async {
    late http.Response response;
    final String urlWithKey = "$url?key=$apiKey";

    switch (requestType) {
      case RequestType.get:
        response = await http.get(Uri.parse(urlWithKey), headers: headers);
        break;
      case RequestType.post:
        response = await http.post(Uri.parse(urlWithKey),
            headers: headers, body: body);
        break;
      case RequestType.put:
        response =
            await http.put(Uri.parse(urlWithKey), headers: headers, body: body);
        break;
      case RequestType.delete:
        response = await http.delete(Uri.parse(urlWithKey), headers: headers);
        break;
      default:
        throw Exception('Unsupported request type: $requestType');
    }

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'Failed to send request: ${RequestStatusCode[response.statusCode]}');
    }
  }
}
