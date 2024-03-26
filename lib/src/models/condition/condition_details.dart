// yet to be completed
class ConditionDetails {
  final Map<String, dynamic> details;

  ConditionDetails({
    required this.details,
  });

  factory ConditionDetails.fromJson(Map<String, dynamic> json) {
    return ConditionDetails(details: json['details'] as Map<String, dynamic>);
  }
}
