// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queued-track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueuedTrack _$QueuedTrackFromJson(Map<String, dynamic> json) {
  return QueuedTrack()
    ..track = json['track'] == null
        ? null
        : Track.fromJson(json['track'] as Map<String, dynamic>);
}

Map<String, dynamic> _$QueuedTrackToJson(QueuedTrack instance) =>
    <String, dynamic>{
      'track': instance.track,
    };
