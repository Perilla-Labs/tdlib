part of '../tdapi.dart';

/// **SetForumTopicNotificationSettings** *(setForumTopicNotificationSettings)* - TDLib function
///
/// Changes the notification settings of a forum topic.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: Message thread identifier of the forum topic.
/// * [notificationSettings]: New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever.
///
/// [Ok] is returned on completion.
final class SetForumTopicNotificationSettings extends TdFunction {
  /// **SetForumTopicNotificationSettings** *(setForumTopicNotificationSettings)* - TDLib function
  ///
  /// Changes the notification settings of a forum topic.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  /// * [notificationSettings]: New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever.
  ///
  /// [Ok] is returned on completion.
  const SetForumTopicNotificationSettings({
    required this.chatId,
    required this.messageThreadId,
    required this.notificationSettings,
  });

  /// Chat identifier
  final int chatId;

  /// Message thread identifier of the forum topic
  final int messageThreadId;

  /// New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "notification_settings": notificationSettings.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_thread_id]: Message thread identifier of the forum topic
  /// * [notification_settings]: New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever
  SetForumTopicNotificationSettings copyWith({
    int? chatId,
    int? messageThreadId,
    ChatNotificationSettings? notificationSettings,
  }) => SetForumTopicNotificationSettings(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    notificationSettings: notificationSettings ?? this.notificationSettings,
  );

  /// TDLib object type
  static const String defaultObjectId = 'setForumTopicNotificationSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
