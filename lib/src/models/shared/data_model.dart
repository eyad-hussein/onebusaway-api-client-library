import "package:onebusaway_api_client_library/src/enums/reference_element_enum.dart";
import "package:onebusaway_api_client_library/src/models/shared/element_model.dart";
import "package:onebusaway_api_client_library/src/models/shared/entry_model.dart";
import "package:onebusaway_api_client_library/src/models/shared/list_response_model.dart";
import "package:onebusaway_api_client_library/src/utils/element_parser.dart";

class DataModel {
  dynamic data;
  Map<ReferenceElementType, List<ElementModel>>? references;

  DataModel({this.data, this.references});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    Map<ReferenceElementType, List<ElementModel>>? refs;

    if (json.containsKey('references')) {
      refs = (json['references'] as Map<String, dynamic>).map(
        (key, value) {
          List<ElementModel> elements = (value as List<ElementModel>)
              .map((element) => ElementParser.parseElement(key, element))
              .toList();

          return MapEntry(ReferenceElementType.fromString(key), elements);
        },
      );
    }

    if (json.containsKey('entry')) {
      return DataModel(
        data: EntryModel.fromJson(json['entry']),
        references: refs,
      );
    } else if (json.containsKey('list')) {
      return DataModel(
        data: ListResponseModel.fromJson(json),
        references: refs,
      );
    }

    return DataModel();
  }
}
