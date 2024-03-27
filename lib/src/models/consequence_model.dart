import 'package:onebusaway_api_client_library/src/models/condition/condition_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class ConsequenceModel extends ElementModel {
  final ConditionModel condition;

  ConsequenceModel({
    required this.condition,
  });

  factory ConsequenceModel.fromJson(Map<String, dynamic> json) {
    return ConsequenceModel(
      condition: ConditionModel.fromJson(
        json['condition'],
      ),
    );
  }
}
