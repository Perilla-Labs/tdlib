part of '../tdapi.dart';

/// **GetChatHistory** *(getChatHistory)* - TDLib function
///
/// Returns messages in a chat. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id).. For optimal performance, the number of returned messages is chosen by TDLib. This is an offline method if only_local is true.
///
/// * [chatId]: Chat identifier.
/// * [fromMessageId]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message.
/// * [offset]: Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages.
/// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
/// * [onlyLocal]: Pass true to get only messages that are available without sending network requests.
///
/// [Messages] is returned on completion.
final class GetChatHistory extends TdFunction {
  /// **GetChatHistory** *(getChatHistory)* - TDLib function
  ///
  /// Returns messages in a chat. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id).. For optimal performance, the number of returned messages is chosen by TDLib. This is an offline method if only_local is true.
  ///
  /// * [chatId]: Chat identifier.
  /// * [fromMessageId]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message.
  /// * [offset]: Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages.
  /// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
  /// * [onlyLocal]: Pass true to get only messages that are available without sending network requests.
  ///
  /// [Messages] is returned on completion.
  const GetChatHistory({
    required this.chatId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    required this.onlyLocal,
  });

  /// Chat identifier
  final int chatId;

  /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// Pass true to get only messages that are available without sending network requests
  final bool onlyLocal;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "from_message_id": fromMessageId,
      "offset": offset,
      "limit": limit,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [from_message_id]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  /// * [offset]: Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages
  /// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  /// * [only_local]: Pass true to get only messages that are available without sending network requests
  GetChatHistory copyWith({
    int? chatId,
    int? fromMessageId,
    int? offset,
    int? limit,
    bool? onlyLocal,
  }) => GetChatHistory(
    chatId: chatId ?? this.chatId,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
    onlyLocal: onlyLocal ?? this.onlyLocal,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getChatHistory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
