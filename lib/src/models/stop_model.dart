import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class StopModel extends ElementModel {
  final String stopId;

  StopModel({
    required this.stopId,
  });

  factory StopModel.fromJson(Map<String, dynamic> json) {
    return StopModel(stopId: json['stopId']);
  }
}
