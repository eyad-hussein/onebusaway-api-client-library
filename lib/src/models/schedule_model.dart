import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
import 'package:onebusaway_api_client_library/src/models/trip/trip_stop_time_model.dart';

class ScheduleModel extends ElementModel {
  final String timeZone;
  final List<TripStopTimeModel> stopTimes;
  final String? previousTripId;
  final String? nextTripId;

  ScheduleModel({
    required this.timeZone,
    required this.stopTimes,
    this.previousTripId,
    this.nextTripId,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    return ScheduleModel(
      timeZone: json['timeZone'] as String,
      stopTimes: (json['stopTimes'] as List<dynamic>)
          .map((stopTime) => TripStopTimeModel.fromJson(stopTime))
          .toList(),
      previousTripId: json['previousTripId'] as String?,
      nextTripId: json['nextTripId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timeZone': timeZone,
      'stopTimes': stopTimes.map((stopTime) => stopTime.toJson()).toList(),
      'previousTripId': previousTripId,
      'nextTripId': nextTripId,
    };
  }
}
