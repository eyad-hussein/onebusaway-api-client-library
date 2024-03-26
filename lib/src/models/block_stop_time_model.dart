import 'package:onebusaway_api_client_library/src/models/stop_time_model.dart';

class BlockStopTimeModel {
  final int blockSequence;
  final double distanceAlongBlock;
  final double accumulatedSlackTime;
  final StopTimeModel stopTime;

  BlockStopTimeModel({
    required this.blockSequence,
    required this.distanceAlongBlock,
    required this.accumulatedSlackTime,
    required this.stopTime,
  });

  factory BlockStopTimeModel.fromJson(Map<String, dynamic> json) {
    return BlockStopTimeModel(
      blockSequence: json['blockSequence'],
      distanceAlongBlock: json['distanceAlongBlock'],
      accumulatedSlackTime: json['accumulatedSlackTime'],
      stopTime: StopTimeModel.fromJson(json['stopTime']),
    );
  }
}
