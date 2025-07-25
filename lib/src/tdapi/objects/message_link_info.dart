part of '../tdapi.dart';

/// **MessageLinkInfo** *(messageLinkInfo)* - basic class
///
/// Contains information about a link to a message or a forum topic in a chat.
///
/// * [isPublic]: True, if the link is a public link for a message or a forum topic in a chat.
/// * [chatId]: If found, identifier of the chat to which the link points, 0 otherwise.
/// * [messageThreadId]: If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing.
/// * [message]: If found, the linked message; may be null *(optional)*.
/// * [mediaTimestamp]: Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its link preview.
/// * [forAlbum]: True, if the whole media album to which the message belongs is linked.
final class MessageLinkInfo extends TdObject {
  /// **MessageLinkInfo** *(messageLinkInfo)* - basic class
  ///
  /// Contains information about a link to a message or a forum topic in a chat.
  ///
  /// * [isPublic]: True, if the link is a public link for a message or a forum topic in a chat.
  /// * [chatId]: If found, identifier of the chat to which the link points, 0 otherwise.
  /// * [messageThreadId]: If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing.
  /// * [message]: If found, the linked message; may be null *(optional)*.
  /// * [mediaTimestamp]: Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its link preview.
  /// * [forAlbum]: True, if the whole media album to which the message belongs is linked.
  const MessageLinkInfo({
    required this.isPublic,
    required this.chatId,
    required this.messageThreadId,
    this.message,
    required this.mediaTimestamp,
    required this.forAlbum,
    this.extra,
    this.clientId,
  });

  /// True, if the link is a public link for a message or a forum topic in a chat
  final bool isPublic;

  /// If found, identifier of the chat to which the link points, 0 otherwise
  final int chatId;

  /// If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing
  final int messageThreadId;

  /// If found, the linked message; may be null
  final Message? message;

  /// Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its link preview
  final int mediaTimestamp;

  /// True, if the whole media album to which the message belongs is linked
  final bool forAlbum;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory MessageLinkInfo.fromJson(Map<String, dynamic> json) =>
      MessageLinkInfo(
        isPublic: json['is_public'],
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        message: json['message'] == null
            ? null
            : Message.fromJson(json['message']),
        mediaTimestamp: json['media_timestamp'],
        forAlbum: json['for_album'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "is_public": isPublic,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "message": message?.toJson(),
      "media_timestamp": mediaTimestamp,
      "for_album": forAlbum,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_public]: True, if the link is a public link for a message or a forum topic in a chat
  /// * [chat_id]: If found, identifier of the chat to which the link points, 0 otherwise
  /// * [message_thread_id]: If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing
  /// * [message]: If found, the linked message; may be null
  /// * [media_timestamp]: Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its link preview
  /// * [for_album]: True, if the whole media album to which the message belongs is linked
  MessageLinkInfo copyWith({
    bool? isPublic,
    int? chatId,
    int? messageThreadId,
    Message? message,
    int? mediaTimestamp,
    bool? forAlbum,
    dynamic extra,
    int? clientId,
  }) => MessageLinkInfo(
    isPublic: isPublic ?? this.isPublic,
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    message: message ?? this.message,
    mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
    forAlbum: forAlbum ?? this.forAlbum,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageLinkInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
