class CallModel {
  final String stopId;

  CallModel({
    required this.stopId,
  });

  factory CallModel.fromJson(Map<String, dynamic> json) {
    return CallModel(stopId: json['stopId']);
  }
}
