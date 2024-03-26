class TripModel {
  final String id;
  final String routeId;
  final String serviceId;
  String? tripShortName;
  String? tripHeadsign;
  String? shapeId;
  int? directionId;

  TripModel({
    required this.id,
    required this.routeId,
    required this.serviceId,
    this.tripShortName,
    this.tripHeadsign,
    this.shapeId,
    this.directionId,
  });

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      id: json['id'] as String,
      routeId: json['routeId'] as String,
      serviceId: json['serviceId'] as String,
      tripShortName: json['tripShortName'] as String?,
      tripHeadsign: json['tripHeadsign'] as String?,
      shapeId: json['shapeId'] as String?,
      directionId: json['directionId'] as int?,
    );
  }
}
