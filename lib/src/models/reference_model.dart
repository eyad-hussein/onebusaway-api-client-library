// import 'package:onebusaway_api_client_library/src/enums/reference_element_enum.dart';
// import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';
// import 'package:onebusaway_api_client_library/src/utils/reference_element_parser.dart';

// class ReferenceModel {
//   // final ReferenceElement name;
//   final List<ElementModel> data;

//   ReferenceModel({
//     // required this.name,
//     required this.data,
//   });

//   factory ReferenceModel.fromJson(Map<String, dynamic> json) {
//     final ReferenceElement referenceElement =
//         ReferenceElement.fromString(json.keys.first);

//     return ReferenceModel(
//       // name: referenceElement,
//       data: ElementParser.parseElement(
//         referenceElement,
//         json.values.first as List<dynamic>,
//       ),
//     );
//   }
// }
