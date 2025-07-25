part of '../tdapi.dart';

/// **EditForumTopic** *(editForumTopic)* - TDLib function
///
/// Edits title and icon of a topic in a forum supergroup chat; requires can_manage_topics right in the supergroup unless the user is creator of the topic.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
/// * [name]: New name of the topic; 0-128 characters. If empty, the previous topic name is kept.
/// * [editIconCustomEmoji]: Pass true to edit the icon of the topic. Icon of the General topic can't be edited.
/// * [iconCustomEmojiId]: Identifier of the new custom emoji for topic icon; pass 0 to remove the custom emoji. Ignored if edit_icon_custom_emoji is false. Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by getForumTopicDefaultIcons.
///
/// [Ok] is returned on completion.
final class EditForumTopic extends TdFunction {
  /// **EditForumTopic** *(editForumTopic)* - TDLib function
  ///
  /// Edits title and icon of a topic in a forum supergroup chat; requires can_manage_topics right in the supergroup unless the user is creator of the topic.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  /// * [name]: New name of the topic; 0-128 characters. If empty, the previous topic name is kept.
  /// * [editIconCustomEmoji]: Pass true to edit the icon of the topic. Icon of the General topic can't be edited.
  /// * [iconCustomEmojiId]: Identifier of the new custom emoji for topic icon; pass 0 to remove the custom emoji. Ignored if edit_icon_custom_emoji is false. Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by getForumTopicDefaultIcons.
  ///
  /// [Ok] is returned on completion.
  const EditForumTopic({
    required this.chatId,
    required this.messageThreadId,
    required this.name,
    required this.editIconCustomEmoji,
    required this.iconCustomEmojiId,
  });

  /// Identifier of the chat
  final int chatId;

  /// Message thread identifier of the forum topic
  final int messageThreadId;

  /// New name of the topic; 0-128 characters. If empty, the previous topic name is kept
  final String name;

  /// Pass true to edit the icon of the topic. Icon of the General topic can't be edited
  final bool editIconCustomEmoji;

  /// Identifier of the new custom emoji for topic icon; pass 0 to remove the custom emoji. Ignored if edit_icon_custom_emoji is false. Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by getForumTopicDefaultIcons
  final int iconCustomEmojiId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "name": name,
      "edit_icon_custom_emoji": editIconCustomEmoji,
      "icon_custom_emoji_id": iconCustomEmojiId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  /// * [message_thread_id]: Message thread identifier of the forum topic
  /// * [name]: New name of the topic; 0-128 characters. If empty, the previous topic name is kept
  /// * [edit_icon_custom_emoji]: Pass true to edit the icon of the topic. Icon of the General topic can't be edited
  /// * [icon_custom_emoji_id]: Identifier of the new custom emoji for topic icon; pass 0 to remove the custom emoji. Ignored if edit_icon_custom_emoji is false. Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by getForumTopicDefaultIcons
  EditForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
    String? name,
    bool? editIconCustomEmoji,
    int? iconCustomEmojiId,
  }) => EditForumTopic(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    name: name ?? this.name,
    editIconCustomEmoji: editIconCustomEmoji ?? this.editIconCustomEmoji,
    iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'editForumTopic';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
