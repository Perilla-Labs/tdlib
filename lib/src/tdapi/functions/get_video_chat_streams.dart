part of '../tdapi.dart';

/// **GetVideoChatStreams** *(getVideoChatStreams)* - TDLib function
///
/// Returns information about available video chat streams.
///
/// * [groupCallId]: Group call identifier.
///
/// [VideoChatStreams] is returned on completion.
final class GetVideoChatStreams extends TdFunction {
  /// **GetVideoChatStreams** *(getVideoChatStreams)* - TDLib function
  ///
  /// Returns information about available video chat streams.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [VideoChatStreams] is returned on completion.
  const GetVideoChatStreams({required this.groupCallId});

  /// Group call identifier
  final int groupCallId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier
  GetVideoChatStreams copyWith({int? groupCallId}) =>
      GetVideoChatStreams(groupCallId: groupCallId ?? this.groupCallId);

  /// TDLib object type
  static const String defaultObjectId = 'getVideoChatStreams';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
