import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class PositionModel extends ElementModel {
  final double lat;
  final double lon;

  PositionModel({
    required this.lat,
    required this.lon,
  });

  factory PositionModel.fromJson(Map<String, dynamic> json) {
    return PositionModel(
        lat: json['lat'] as double, lon: json['lon'] as double);
  }
}
