import 'package:onebusaway_api_client_library/src/models/stop_model.dart';
import 'package:onebusaway_api_client_library/src/models/vehicle_journey_model.dart';

class AffectModel {
  final List<StopModel> stops;
  final List<VehicleJourneyModel> vehicleJourneys;

  AffectModel({
    required this.stops,
    required this.vehicleJourneys,
  });

  factory AffectModel.fromJson(Map<String, dynamic> json) {
    return AffectModel(
      stops: (json['stops'] as List<dynamic>)
          .map((stop) => StopModel.fromJson(stop))
          .toList(),
      vehicleJourneys: (json['vehicleJourneys'] as List<dynamic>)
          .map((vehicleJourney) => VehicleJourneyModel.fromJson(vehicleJourney))
          .toList(),
    );
  }
}
