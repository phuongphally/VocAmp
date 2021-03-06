import 'package:audio_service/audio_service.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:voc_amp/models/media/track.dart';
import 'package:uuid/uuid.dart';

part 'queue-track.g.dart';

@JsonSerializable()
class QueueTrack {
  String id;
  Track track;

  QueueTrack() {
    id = Uuid().v4();
  }

  MediaItem buildMediaItem({Duration duration}) {
    return MediaItem(
      // required
      id: id,
      album: track.album?.albumName ?? 'No Album',
      title: track.title,
      // non-required
      artist: track.artist,
      duration: duration?.inMilliseconds ?? track.duration,
      artUri: track.artUri,
    );
  }

  factory QueueTrack.fromTrack(Track track) {
    return QueueTrack()..track = track;
  }

  factory QueueTrack.fromJson(Map<String, dynamic> json) =>
      _$QueueTrackFromJson(json);

  Map<String, dynamic> toJson() => _$QueueTrackToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueueTrack && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
