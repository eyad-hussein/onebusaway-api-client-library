class FrequencyModel {
  final int startTime;
  final int endTime;
  final int headway;

  FrequencyModel({
    required this.startTime,
    required this.endTime,
    required this.headway,
  });

  factory FrequencyModel.fromJSON(Map<String, dynamic> json) {
    return FrequencyModel(
        startTime: json['startTime'] as int,
        endTime: json['endTime'] as int,
        headway: json['headway'] as int);
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime,
      'endTime': endTime,
      'headway': headway,
    };
  }
}
