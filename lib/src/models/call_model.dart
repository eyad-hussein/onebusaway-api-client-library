import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class CallModel extends ElementModel {
  final String stopId;

  CallModel({
    required this.stopId,
  });

  factory CallModel.fromJson(Map<String, dynamic> json) {
    return CallModel(stopId: json['stopId']);
  }
}
