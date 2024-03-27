import 'package:onebusaway_api_client_library/src/enums/consequence_condition_enum.dart';
import 'package:onebusaway_api_client_library/src/models/condition/condition_details_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
import 'package:onebusaway_api_client_library/src/utils/consequence_condition_parser.dart';

class ConditionModel extends ElementModel {
  final ConseuquenceCondition condition;
  final ConditionDetailsModel? conditionDetails;

  ConditionModel({
    required this.condition,
    required this.conditionDetails,
  });

  factory ConditionModel.fromJson(Map<String, dynamic> json) {
    final ConseuquenceCondition condition =
        ConseuquenceCondition.fromString(json['condition'] as String)
            as ConseuquenceCondition;

    return ConditionModel(
        condition: condition,
        conditionDetails: ConsequenceConditionParser.parseCondition(condition));
  }
}
