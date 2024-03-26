import "package:onebusaway_api_client_library/src/models/reference_model.dart";
import "package:onebusaway_api_client_library/src/models/shared/element_model.dart";

class DataModel {
  List<ElementModel>? data;
  List<ReferenceModel>? references;
  bool limitExceeded;

  DataModel({this.limitExceeded = false, this.data, this.references});
}
