import 'package:onebusaway_api_client_library/src/models/position_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
import 'package:onebusaway_api_client_library/src/models/trip/trip_status_model.dart';

class VehicleStatusModel extends ElementModel {
  final String vehicleId;
  final int lastUpdateTime;
  final int lastLocationUpdateTime;
  final PositionModel location;
  final String tripId;
  final TripStatusModel? tripStatus;

  VehicleStatusModel({
    required this.vehicleId,
    required this.lastUpdateTime,
    required this.lastLocationUpdateTime,
    required this.location,
    required this.tripId,
    this.tripStatus,
  });

  factory VehicleStatusModel.fromJson(Map<String, dynamic> json) {
    return VehicleStatusModel(
      vehicleId: json['vehicleId'] as String,
      lastUpdateTime: json['lastUpdateTime'] as int,
      lastLocationUpdateTime: json['lastLocationUpdateTime'] as int,
      location: PositionModel.fromJson(json['location']),
      tripId: json['tripId'] as String,
      tripStatus: json['tripStatus'] != null
          ? TripStatusModel.fromJson(json['tripStatus']) as TripStatusModel?
          : null,
    );
  }
}
