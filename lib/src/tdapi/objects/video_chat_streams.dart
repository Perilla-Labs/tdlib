part of '../tdapi.dart';

/// **VideoChatStreams** *(videoChatStreams)* - basic class
///
/// Represents a list of video chat streams.
///
/// * [streams]: A list of video chat streams.
final class VideoChatStreams extends TdObject {
  /// **VideoChatStreams** *(videoChatStreams)* - basic class
  ///
  /// Represents a list of video chat streams.
  ///
  /// * [streams]: A list of video chat streams.
  const VideoChatStreams({required this.streams, this.extra, this.clientId});

  /// A list of video chat streams
  final List<VideoChatStream> streams;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory VideoChatStreams.fromJson(Map<String, dynamic> json) =>
      VideoChatStreams(
        streams: List<VideoChatStream>.from(
          (json['streams'] ?? [])
              .map((item) => VideoChatStream.fromJson(item))
              .toList(),
        ),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "streams": streams.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [streams]: A list of video chat streams
  VideoChatStreams copyWith({
    List<VideoChatStream>? streams,
    dynamic extra,
    int? clientId,
  }) => VideoChatStreams(
    streams: streams ?? this.streams,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'videoChatStreams';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
