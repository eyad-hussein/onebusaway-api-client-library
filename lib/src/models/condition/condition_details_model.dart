// yet to be completed
class ConditionDetailsModel {
  final Map<String, dynamic> details;

  ConditionDetailsModel({
    required this.details,
  });

  factory ConditionDetailsModel.fromJson(Map<String, dynamic> json) {
    return ConditionDetailsModel(
        details: json['details'] as Map<String, dynamic>);
  }
}
