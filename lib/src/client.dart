import 'package:onebusaway_api_client_library/src/endpoints.dart';
import 'package:onebusaway_api_client_library/src/enums/endpoint_enum.dart';
import 'package:onebusaway_api_client_library/src/enums/request_type_enum.dart';
import 'package:onebusaway_api_client_library/src/utils/request_handler.dart';

class OneBusAwayApiClient {
  final String baseUrl;
  final String apiKey;

  OneBusAwayApiClient({
    required this.baseUrl,
    required this.apiKey,
  });

  Future<dynamic> getAgenciesWithCoverage() async {
    dynamic response;
    try {
      response = await RequestHandler.sendRequest(
        "$baseUrl/${Endpoints[Endpoint.agenciesWithCoverage]}.json",
        RequestType.get,
      );
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
