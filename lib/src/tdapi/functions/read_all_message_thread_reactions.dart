part of '../tdapi.dart';

/// **ReadAllMessageThreadReactions** *(readAllMessageThreadReactions)* - TDLib function
///
/// Marks all reactions in a forum topic as read.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: Message thread identifier in which reactions are marked as read.
///
/// [Ok] is returned on completion.
final class ReadAllMessageThreadReactions extends TdFunction {
  /// **ReadAllMessageThreadReactions** *(readAllMessageThreadReactions)* - TDLib function
  ///
  /// Marks all reactions in a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier in which reactions are marked as read.
  ///
  /// [Ok] is returned on completion.
  const ReadAllMessageThreadReactions({
    required this.chatId,
    required this.messageThreadId,
  });

  /// Chat identifier
  final int chatId;

  /// Message thread identifier in which reactions are marked as read
  final int messageThreadId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_thread_id]: Message thread identifier in which reactions are marked as read
  ReadAllMessageThreadReactions copyWith({int? chatId, int? messageThreadId}) =>
      ReadAllMessageThreadReactions(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'readAllMessageThreadReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
