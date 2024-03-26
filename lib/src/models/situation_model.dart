import 'package:onebusaway_api_client_library/src/enums/situation_reason_enum.dart';
import 'package:onebusaway_api_client_library/src/models/affect_model.dart';
import 'package:onebusaway_api_client_library/src/models/consequence_model.dart';

class SituationModel {
  final String id;
  final int creationTime;
  final SituationReason reason;
  final String? summary;
  final String? description;
  final String? advice;
  final List<AffectModel> affects;
  final List<ConsequenceModel> consequences;

  SituationModel({
    required this.id,
    required this.creationTime,
    required this.reason,
    required this.affects,
    required this.consequences,
    this.summary,
    this.description,
    this.advice,
  });

  factory SituationModel.fromJson(Map<String, dynamic> json) {
    return SituationModel(
      id: json['id'] as String,
      creationTime: json['creationTime'] as int,
      reason: SituationReason.fromString(json['reason'] as String),
      summary: json['summary']['value'] as String?,
      description: json['description']['value'] as String?,
      advice: json['advice']['value'] as String?,
      affects: (json['affects'] as List<dynamic>)
          .map<AffectModel>((affect) => AffectModel.fromJson(affect))
          .toList(),
      consequences: (json['consequences'] as List<dynamic>)
          .map<ConsequenceModel>(
              (consequence) => ConsequenceModel.fromJson(consequence))
          .toList(),
    );
  }
}
