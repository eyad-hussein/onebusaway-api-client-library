import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class RouteModel extends ElementModel {
  final String id;
  final String? shortName;
  final String? longName;
  final String? description;
  final int type;
  final String agencyId;
  final String? url;
  final String? color;
  final String? textColor;

  RouteModel({
    required this.id,
    required this.type,
    required this.agencyId,
    this.shortName,
    this.longName,
    this.description,
    this.url,
    this.color,
    this.textColor,
  });

  factory RouteModel.fromJson(Map<String, dynamic> json) {
    return RouteModel(
      id: json['id'] as String,
      shortName: json['shortName'] as String?,
      longName: json['longName'] as String?,
      description: json['description'] as String?,
      type: json['type'] as int,
      agencyId: json['agencyId'] as String,
      url: json['url'] as String?,
      color: json['color'] as String?,
      textColor: json['textColor'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'shortName': shortName,
      'longName': longName,
      'description': description,
      'type': type,
      'agencyId': agencyId,
      'url': url,
      'color': color,
      'textColor': textColor,
    };
  }
}
