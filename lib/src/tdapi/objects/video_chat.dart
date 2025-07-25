part of '../tdapi.dart';

/// **VideoChat** *(videoChat)* - basic class
///
/// Describes a video chat, i.e. a group call bound to a chat.
///
/// * [groupCallId]: Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall.
/// * [hasParticipants]: True, if the video chat has participants.
/// * [defaultParticipantId]: Default group call participant identifier to join the video chat; may be null *(optional)*.
final class VideoChat extends TdObject {
  /// **VideoChat** *(videoChat)* - basic class
  ///
  /// Describes a video chat, i.e. a group call bound to a chat.
  ///
  /// * [groupCallId]: Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall.
  /// * [hasParticipants]: True, if the video chat has participants.
  /// * [defaultParticipantId]: Default group call participant identifier to join the video chat; may be null *(optional)*.
  const VideoChat({
    required this.groupCallId,
    required this.hasParticipants,
    this.defaultParticipantId,
  });

  /// Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall
  final int groupCallId;

  /// True, if the video chat has participants
  final bool hasParticipants;

  /// Default group call participant identifier to join the video chat; may be null
  final MessageSender? defaultParticipantId;

  /// Parse from a json
  factory VideoChat.fromJson(Map<String, dynamic> json) => VideoChat(
    groupCallId: json['group_call_id'] ?? 0,
    hasParticipants: json['has_participants'],
    defaultParticipantId: json['default_participant_id'] == null
        ? null
        : MessageSender.fromJson(json['default_participant_id']),
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "group_call_id": groupCallId,
      "has_participants": hasParticipants,
      "default_participant_id": defaultParticipantId?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall
  /// * [has_participants]: True, if the video chat has participants
  /// * [default_participant_id]: Default group call participant identifier to join the video chat; may be null
  VideoChat copyWith({
    int? groupCallId,
    bool? hasParticipants,
    MessageSender? defaultParticipantId,
  }) => VideoChat(
    groupCallId: groupCallId ?? this.groupCallId,
    hasParticipants: hasParticipants ?? this.hasParticipants,
    defaultParticipantId: defaultParticipantId ?? this.defaultParticipantId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'videoChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
