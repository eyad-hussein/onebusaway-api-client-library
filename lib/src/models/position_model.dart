class PositionModel {
  final double lat;
  final double lon;

  PositionModel({
    required this.lat,
    required this.lon,
  });

  factory PositionModel.fromJSON(Map<String, dynamic> json) {
    return PositionModel(
        lat: json['lat'] as double, lon: json['lon'] as double);
  }
}
