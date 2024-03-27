import 'package:onebusaway_api_client_library/src/models/frequency_model.dart';
import 'package:onebusaway_api_client_library/src/models/position_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class TripStatusModel extends ElementModel {
  final String activeTripId;
  final int blockTripSequence;
  final int serviceDate;
  final FrequencyModel? frequency;
  final double? scheduledDistanceAlongTrip;
  final double totalDistanceAlongTrip;
  final PositionModel? position;
  final double? orientation;
  final String closestStop;
  final int closestStopTimeOffset;
  final String? nextStop;
  final int? nextStopTimeOffset;
  final String occupancyStatus;
  final String phase;
  final String status;
  final bool predicted;
  final int lastUpdateTime;
  final int lastLocationUpdateTime;
  final PositionModel? lastKnownLocation;
  final double? lastKnownDistanceAlongTrip;
  final double? lastKnownOrientation;
  final double? distanceAlongTrip;
  final int scheduleDeviation;
  final String? vehicleId;
  final List<String> situationIds;

  TripStatusModel({
    required this.activeTripId,
    required this.blockTripSequence,
    required this.serviceDate,
    required this.totalDistanceAlongTrip,
    required this.closestStop,
    required this.closestStopTimeOffset,
    required this.occupancyStatus,
    required this.phase,
    required this.status,
    required this.predicted,
    required this.lastUpdateTime,
    required this.lastLocationUpdateTime,
    required this.situationIds,
    this.scheduledDistanceAlongTrip,
    this.position,
    this.orientation,
    this.lastKnownLocation,
    this.lastKnownDistanceAlongTrip,
    this.lastKnownOrientation,
    this.distanceAlongTrip,
    this.scheduleDeviation = 0,
    this.vehicleId,
    this.frequency,
    this.nextStop,
    this.nextStopTimeOffset,
  });

  factory TripStatusModel.fromJson(Map<String, dynamic> json) {
    return TripStatusModel(
      activeTripId: json['activeTripId'] as String,
      blockTripSequence: json['blockTripSequence'] as int,
      serviceDate: json['serviceDate'] as int,
      totalDistanceAlongTrip: json['totalDistanceAlongTrip'] as double,
      closestStop: json['closestStop'] as String,
      closestStopTimeOffset: json['closestStopTimeOffset'] as int,
      nextStop: json['nextStop'] as String,
      nextStopTimeOffset: json['nextStopTimeOffset'] as int,
      occupancyStatus: json['occupancyStatus'] as String,
      phase: json['phase'] as String,
      status: json['status'] as String,
      predicted: json['predicted'] as bool,
      lastUpdateTime: json['lastUpdateTime'] as int,
      lastLocationUpdateTime: json['lastLocationUpdateTime'] as int,
      situationIds: List<String>.from(json['situationIds'] as List),
      scheduledDistanceAlongTrip: json['scheduledDistanceAlongTrip'] as double?,
      position: json['position'] != null
          ? PositionModel.fromJson(json['position'])
          : null,
      orientation: json['orientation'] as double?,
      lastKnownLocation: json['lastKnownLocation'] != null
          ? PositionModel.fromJson(json['lastKnownLocation'])
          : null,
      lastKnownDistanceAlongTrip: json['lastKnownDistanceAlongTrip'] as double?,
      lastKnownOrientation: json['lastKnownOrientation'] as double?,
      distanceAlongTrip: json['distanceAlongTrip'] as double?,
      scheduleDeviation: json['scheduleDeviation'] as int? ?? 0,
      vehicleId: json['vehicleId'] as String?,
    );
  }
}
