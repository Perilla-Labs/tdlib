part of '../tdapi.dart';

/// **SetChatDiscussionGroup** *(setChatDiscussionGroup)* - TDLib function
///
/// Changes the discussion group of a channel chat; requires can_change_info administrator right in the channel if it is specified.
///
/// * [chatId]: Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages member right in the supergroup).
/// * [discussionChatId]: Identifier of a new channel's discussion group. Use 0 to remove the discussion group. Use the method getSuitableDiscussionChats to find all suitable groups.. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that.
///
/// [Ok] is returned on completion.
final class SetChatDiscussionGroup extends TdFunction {
  /// **SetChatDiscussionGroup** *(setChatDiscussionGroup)* - TDLib function
  ///
  /// Changes the discussion group of a channel chat; requires can_change_info administrator right in the channel if it is specified.
  ///
  /// * [chatId]: Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages member right in the supergroup).
  /// * [discussionChatId]: Identifier of a new channel's discussion group. Use 0 to remove the discussion group. Use the method getSuitableDiscussionChats to find all suitable groups.. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that.
  ///
  /// [Ok] is returned on completion.
  const SetChatDiscussionGroup({
    required this.chatId,
    required this.discussionChatId,
  });

  /// Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages member right in the supergroup)
  final int chatId;

  /// Identifier of a new channel's discussion group. Use 0 to remove the discussion group. Use the method getSuitableDiscussionChats to find all suitable groups.. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that
  final int discussionChatId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "discussion_chat_id": discussionChatId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages member right in the supergroup)
  /// * [discussion_chat_id]: Identifier of a new channel's discussion group. Use 0 to remove the discussion group. Use the method getSuitableDiscussionChats to find all suitable groups.. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that
  SetChatDiscussionGroup copyWith({int? chatId, int? discussionChatId}) =>
      SetChatDiscussionGroup(
        chatId: chatId ?? this.chatId,
        discussionChatId: discussionChatId ?? this.discussionChatId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'setChatDiscussionGroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
