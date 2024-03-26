import 'package:onebusaway_api_client_library/src/models/shared/element_model.dart';

class AgencyModel extends ElementModel {
  final String id;
  final String name;
  final Uri url;
  final String timezone;
  final String? lang;
  final String? phone;
  final String? disclaimer;

  AgencyModel({
    required this.id,
    required this.name,
    required this.url,
    required this.timezone,
    this.lang,
    this.phone,
    this.disclaimer,
  });

  factory AgencyModel.fromJson(Map<String, dynamic> json) {
    return AgencyModel(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as Uri,
      timezone: json['timezone'] as String,
      lang: json['lang'] as String?,
      phone: json['phone'] as String?,
      disclaimer: json['disclaimer'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'timezone': timezone,
      'lang': lang,
      'phone': phone,
      'disclaimer': disclaimer,
    };
  }
}
