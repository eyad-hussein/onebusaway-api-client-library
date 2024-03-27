import 'package:onebusaway_api_client_library/src/enums/element_type_enum.dart';
import 'package:onebusaway_api_client_library/src/enums/reference_element_type_enum.dart';
import 'package:onebusaway_api_client_library/src/models/agency_model.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
// yet to be completed

class ElementParser {
  static ElementModel parseElement(dynamic element, dynamic payload) {
    switch (element) {
      case ElementType.agency:
      case ReferenceElementType.agencies:
        return AgencyModel.fromJson(payload);
    }

    throw ArgumentError('Invalid element: $element');
  }
}
