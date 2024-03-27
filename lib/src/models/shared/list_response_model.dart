class ListResponseModel {
  final List<Map<String, dynamic>> data;
  final bool limitExceeded;
  bool? outOfRange;
  int? maxCount;

  ListResponseModel({
    required this.data,
    required this.outOfRange,
    this.limitExceeded = false,
    this.maxCount,
  });

  factory ListResponseModel.fromJson(Map<String, dynamic> json) {
    return ListResponseModel(
      data: json['list'] as List<Map<String, dynamic>>,
      limitExceeded: json['limitExceeded'] as bool,
      outOfRange: json['outOfRange'] as bool?,
    );
  }
}
