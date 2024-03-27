import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class TripStopTimeModel extends ElementModel {
  final int arrivalTime;
  final int departureTime;
  final String stopId;

  TripStopTimeModel({
    required this.arrivalTime,
    required this.departureTime,
    required this.stopId,
  });

  factory TripStopTimeModel.fromJson(Map<String, dynamic> json) {
    return TripStopTimeModel(
      arrivalTime: json['arrivalTime'] as int,
      departureTime: json['departureTime'] as int,
      stopId: json['stopId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'arrivalTime': arrivalTime,
      'departureTime': departureTime,
      'stopId': stopId,
    };
  }
}
