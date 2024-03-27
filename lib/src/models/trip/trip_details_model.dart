import 'package:onebusaway_api_client_library/src/models/frequency_model.dart';
import 'package:onebusaway_api_client_library/src/models/schedule_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
import 'package:onebusaway_api_client_library/src/models/trip/trip_status_model.dart';

class TripDetailsModel extends ElementModel {
  final String tripId;
  final int? serviceDate;
  final FrequencyModel? frequency;
  final TripStatusModel? status;
  final ScheduleModel schedule;
  final List<String> situationIds;

  TripDetailsModel({
    required this.tripId,
    required this.schedule,
    required this.situationIds,
    this.serviceDate,
    this.frequency,
    this.status,
  });

  factory TripDetailsModel.fromJson(Map<String, dynamic> json) {
    return TripDetailsModel(
      tripId: json['tripId'],
      schedule: ScheduleModel.fromJson(json['schedule']),
      situationIds: List<String>.from(json['situationIds'] as List<dynamic>),
      serviceDate: json['serviceDate'] as int?,
      frequency: FrequencyModel.fromJson(json['frequency']) as FrequencyModel?,
      status: TripStatusModel.fromJson(json['status']) as TripStatusModel?,
    );
  }
}
