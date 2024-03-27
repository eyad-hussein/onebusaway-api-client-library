class EntryModel {
  final Map<String, dynamic> data;

  EntryModel({
    required this.data,
  });

  factory EntryModel.fromJson(Map<String, dynamic> json) {
    return EntryModel(
      data: json['entry'] as Map<String, dynamic>,
    );
  }
}
