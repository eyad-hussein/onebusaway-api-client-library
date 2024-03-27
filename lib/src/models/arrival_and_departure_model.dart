import 'package:onebusaway_api_client_library/src/models/frequency_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
import 'package:onebusaway_api_client_library/src/models/trip/trip_status_model.dart';

class ArrivalAndDepartureModel extends ElementModel {
  final String routeId;
  final String tripId;
  final int serviceDate;
  final String stopId;
  final int stopSequence;
  final int totalStopsInTrip;
  final int blockTripSequence;
  String? routeShortName;
  String? routeLongName;
  String? tripHeadsign;
  final bool arrivalEnabled;
  final bool departureEnabled;
  final int scheduledArrivalTime;
  final int scheduledDepartureTime;
  final FrequencyModel? frequency;
  final bool predicted;
  final int predictedArrivalTime;
  final int predictedDepartureTime;
  final double distanceFromStop;
  final int numberOfStopsAway;
  final TripStatusModel? tripStatus;

  ArrivalAndDepartureModel({
    required this.routeId,
    required this.tripId,
    required this.serviceDate,
    required this.stopId,
    required this.stopSequence,
    required this.totalStopsInTrip,
    required this.blockTripSequence,
    required this.arrivalEnabled,
    required this.departureEnabled,
    required this.scheduledArrivalTime,
    required this.scheduledDepartureTime,
    required this.predicted,
    required this.predictedArrivalTime,
    required this.predictedDepartureTime,
    required this.distanceFromStop,
    required this.numberOfStopsAway,
    this.routeShortName,
    this.routeLongName,
    this.tripHeadsign,
    this.frequency,
    this.tripStatus,
  });

  factory ArrivalAndDepartureModel.fromJson(Map<String, dynamic> json) {
    return ArrivalAndDepartureModel(
      routeId: json['routeId'] as String,
      tripId: json['tripId'] as String,
      serviceDate: json['serviceDate'] as int,
      stopId: json['stopId'] as String,
      stopSequence: json['stopSequence'] as int,
      totalStopsInTrip: json['totalStopsInTrip'] as int,
      blockTripSequence: json['blockTripSequence'] as int,
      routeShortName: json['routeShortName'] as String?,
      routeLongName: json['routeLongName'] as String?,
      tripHeadsign: json['tripHeadsign'] as String?,
      arrivalEnabled: json['arrivalEnabled'] as bool,
      departureEnabled: json['departureEnabled'] as bool,
      scheduledArrivalTime: json['scheduledArrivalTime'] as int,
      scheduledDepartureTime: json['scheduledDepartureTime'] as int,
      frequency: FrequencyModel.fromJson(json['frequency']) as FrequencyModel?,
      predicted: json['predicted'] as bool,
      predictedArrivalTime: json['predictedArrivalTime'] as int,
      predictedDepartureTime: json['predictedDepartureTime'] as int,
      distanceFromStop: json['distanceFromStop'] as double,
      numberOfStopsAway: json['numberOfStopsAway'] as int,
      tripStatus: json['tripStatus'] != null
          ? TripStatusModel.fromJson(json['tripStatus'])
          : null,
    );
  }
}
