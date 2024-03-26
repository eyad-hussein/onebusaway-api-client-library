import 'package:onebusaway_api_client_library/src/models/stop_model.dart';

class VehicleJourneyModel {
  final String lineId;
  String? direction;
  List<StopModel>? calls;

  VehicleJourneyModel({
    required this.lineId,
    this.direction,
    this.calls,
  });

  factory VehicleJourneyModel.fromJson(Map<String, dynamic> json) {
    return VehicleJourneyModel(
      lineId: json['lineId'] as String,
      direction: json['direction'] as String?,
      calls: (json['calls'] as List<dynamic>?)
          ?.map((callJson) => StopModel.fromJson(callJson))
          .toList(),
    );
  }
}
