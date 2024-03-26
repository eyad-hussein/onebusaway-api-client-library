class StopModel {
  final String stopId;

  StopModel({
    required this.stopId,
  });

  factory StopModel.fromJson(Map<String, dynamic> json) {
    return StopModel(stopId: json['stopId']);
  }
}
