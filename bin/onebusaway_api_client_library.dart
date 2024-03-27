import 'package:onebusaway_api_client_library/src/client.dart';

void main() async {
  final OneBusAwayApiClient client = OneBusAwayApiClient(
    baseUrl: "https://api.pugetsound.onebusaway.org/api/where",
    apiKey: "TEST",
  );

  print(await client.getAgenciesWithCoverage());
}
