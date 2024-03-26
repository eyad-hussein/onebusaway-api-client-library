import 'package:onebusaway_api_client_library/src/models/block_stop_time_model.dart';

class BlockTripModel {
  final String tripId;
  final List<BlockStopTimeModel> blockStopTimes;
  final double accumulatedSlackTime;
  final double distanceAlongBlock;

  BlockTripModel({
    required this.tripId,
    required this.blockStopTimes,
    required this.accumulatedSlackTime,
    required this.distanceAlongBlock,
  });

  factory BlockTripModel.fromJson(Map<String, dynamic> json) {
    return BlockTripModel(
      tripId: json['tripId'],
      blockStopTimes: (json['blockStopTimes'] as List<dynamic>)
          .map<BlockStopTimeModel>(
              (blockStopTime) => BlockStopTimeModel.fromJson(blockStopTime))
          .toList(),
      accumulatedSlackTime: json['accumulatedSlackTime'],
      distanceAlongBlock: json['distanceAlongBlock'],
    );
  }
}
