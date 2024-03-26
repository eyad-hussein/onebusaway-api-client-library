class StopTimeModel {
  final String stopId;
  final int arrivalTime;
  final int departureTime;
  final int pickupType;
  final int dropOffType;

  StopTimeModel({
    required this.stopId,
    required this.arrivalTime,
    required this.departureTime,
    required this.pickupType,
    required this.dropOffType,
  });

  factory StopTimeModel.fromJson(Map<String, dynamic> json) {
    return StopTimeModel(
      stopId: json['stopId'] as String,
      arrivalTime: json['arrivalTime'] as int,
      departureTime: json['departureTime'] as int,
      pickupType: json['pickupType'] as int,
      dropOffType: json['dropOffType'] as int,
    );
  }
}
