part of '../tdapi.dart';

/// **GetMessageLink** *(getMessageLink)* - TDLib function
///
/// Returns an HTTPS link to a message in a chat. Available only if messageProperties.can_get_link, or if messageProperties.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline method.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [mediaTimestamp]: If not 0, timestamp from which the video/audio/video note/voice note/story playing must start, in seconds. The media can be in the message content or in its link preview.
/// * [forAlbum]: Pass true to create a link for the whole media album.
/// * [inMessageThread]: Pass true to create a link to the message as a channel post comment, in a message thread, or a forum topic.
///
/// [MessageLink] is returned on completion.
final class GetMessageLink extends TdFunction {
  /// **GetMessageLink** *(getMessageLink)* - TDLib function
  ///
  /// Returns an HTTPS link to a message in a chat. Available only if messageProperties.can_get_link, or if messageProperties.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline method.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [mediaTimestamp]: If not 0, timestamp from which the video/audio/video note/voice note/story playing must start, in seconds. The media can be in the message content or in its link preview.
  /// * [forAlbum]: Pass true to create a link for the whole media album.
  /// * [inMessageThread]: Pass true to create a link to the message as a channel post comment, in a message thread, or a forum topic.
  ///
  /// [MessageLink] is returned on completion.
  const GetMessageLink({
    required this.chatId,
    required this.messageId,
    required this.mediaTimestamp,
    required this.forAlbum,
    required this.inMessageThread,
  });

  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// If not 0, timestamp from which the video/audio/video note/voice note/story playing must start, in seconds. The media can be in the message content or in its link preview
  final int mediaTimestamp;

  /// Pass true to create a link for the whole media album
  final bool forAlbum;

  /// Pass true to create a link to the message as a channel post comment, in a message thread, or a forum topic
  final bool inMessageThread;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "media_timestamp": mediaTimestamp,
      "for_album": forAlbum,
      "in_message_thread": inMessageThread,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat to which the message belongs
  /// * [message_id]: Identifier of the message
  /// * [media_timestamp]: If not 0, timestamp from which the video/audio/video note/voice note/story playing must start, in seconds. The media can be in the message content or in its link preview
  /// * [for_album]: Pass true to create a link for the whole media album
  /// * [in_message_thread]: Pass true to create a link to the message as a channel post comment, in a message thread, or a forum topic
  GetMessageLink copyWith({
    int? chatId,
    int? messageId,
    int? mediaTimestamp,
    bool? forAlbum,
    bool? inMessageThread,
  }) => GetMessageLink(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
    forAlbum: forAlbum ?? this.forAlbum,
    inMessageThread: inMessageThread ?? this.inMessageThread,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getMessageLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
