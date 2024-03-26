import 'package:http/http.dart' as http; // Import the HTTP client library
import 'dart:convert';
import 'package:onebusaway_api_client_library/src/models/agency_model.dart'; // Import for JSON decoding

class OneBusAwayApiClient {
  final String baseUrl = 'https://api.onebusaway.org';

  Future<List<AgencyModel>> fetchAgencies() async {
    final response = await http.get(Uri.parse('$baseUrl/agencies'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData
          .map((agencyJson) => AgencyModel.fromJson(agencyJson))
          .toList();
    } else {
      throw Exception('Failed to fetch agencies: ${response.statusCode}');
    }
  }
}
