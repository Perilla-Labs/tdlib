part of '../tdapi.dart';

/// **SetDirectMessagesChatTopicDraftMessage** *(setDirectMessagesChatTopicDraftMessage)* - TDLib function
///
/// Changes the draft message in the topic in a channel direct messages chat administered by the current user.
///
/// * [chatId]: Chat identifier.
/// * [topicId]: Topic identifier.
/// * [draftMessage]: New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored *(optional)*.
///
/// [Ok] is returned on completion.
final class SetDirectMessagesChatTopicDraftMessage extends TdFunction {
  /// **SetDirectMessagesChatTopicDraftMessage** *(setDirectMessagesChatTopicDraftMessage)* - TDLib function
  ///
  /// Changes the draft message in the topic in a channel direct messages chat administered by the current user.
  ///
  /// * [chatId]: Chat identifier.
  /// * [topicId]: Topic identifier.
  /// * [draftMessage]: New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetDirectMessagesChatTopicDraftMessage({
    required this.chatId,
    required this.topicId,
    this.draftMessage,
  });

  /// Chat identifier
  final int chatId;

  /// Topic identifier
  final int topicId;

  /// New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
  final DraftMessage? draftMessage;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "topic_id": topicId,
      "draft_message": draftMessage?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [topic_id]: Topic identifier
  /// * [draft_message]: New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
  SetDirectMessagesChatTopicDraftMessage copyWith({
    int? chatId,
    int? topicId,
    DraftMessage? draftMessage,
  }) => SetDirectMessagesChatTopicDraftMessage(
    chatId: chatId ?? this.chatId,
    topicId: topicId ?? this.topicId,
    draftMessage: draftMessage ?? this.draftMessage,
  );

  /// TDLib object type
  static const String defaultObjectId =
      'setDirectMessagesChatTopicDraftMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
