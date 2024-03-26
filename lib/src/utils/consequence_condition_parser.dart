import 'package:onebusaway_api_client_library/src/enums/consequence_condition_enum.dart';
import 'package:onebusaway_api_client_library/src/models/condition/condition_details.dart';
// yet to be completed

class ConsequenceConditionParser {
  static ConditionDetails parseCondition(ConseuquenceCondition condition) {
    switch (condition) {
      case ConseuquenceCondition.diversion:
        return ConditionDetails(details: {});
    }
  }
}
