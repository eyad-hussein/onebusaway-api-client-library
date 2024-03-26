import 'package:onebusaway_api_client_library/src/enums/reference_element_enum.dart';
import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class ReferenceModel {
  final ReferenceElement name;
  final ElementModel data;

  ReferenceModel({
    required this.name,
    required this.data,
  });
}
