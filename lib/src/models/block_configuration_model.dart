import 'package:onebusaway_api_client_library/src/models/block_trip_model.dart';

class BlockConfigurationModel {
  final List<String> activeServiceIds;
  final List<String> inactiveServiceIds;
  final List<BlockTripModel> trips;

  BlockConfigurationModel({
    required this.activeServiceIds,
    required this.inactiveServiceIds,
    required this.trips,
  });

  factory BlockConfigurationModel.fromJson(Map<String, dynamic> json) {
    return BlockConfigurationModel(
      activeServiceIds: List<String>.from(json['activeServiceIds']),
      inactiveServiceIds: List<String>.from(json['inactiveServiceIds']),
      trips: (json['trips'] as List<dynamic>)
          .map<BlockTripModel>((trip) => BlockTripModel.fromJson(trip))
          .toList(),
    );
  }
}
