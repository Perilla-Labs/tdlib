part of '../tdapi.dart';

/// **EditChatInviteLink** *(editChatInviteLink)* - TDLib function
///
/// Edits a non-primary invite link for a chat. Available for basic groups, supergroups, and channels.. If the link creates a subscription, then expiration_date, member_limit and creates_join_request must not be used.. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
///
/// * [chatId]: Chat identifier.
/// * [inviteLink]: Invite link to be edited.
/// * [name]: Invite link name; 0-32 characters.
/// * [expirationDate]: Point in time (Unix timestamp) when the link will expire; pass 0 if never.
/// * [memberLimit]: The maximum number of chat members that can join the chat via the link simultaneously; 0-99999; pass 0 if not limited.
/// * [createsJoinRequest]: Pass true if users joining the chat via the link need to be approved by chat administrators. In this case, member_limit must be 0.
///
/// [ChatInviteLink] is returned on completion.
final class EditChatInviteLink extends TdFunction {
  /// **EditChatInviteLink** *(editChatInviteLink)* - TDLib function
  ///
  /// Edits a non-primary invite link for a chat. Available for basic groups, supergroups, and channels.. If the link creates a subscription, then expiration_date, member_limit and creates_join_request must not be used.. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
  ///
  /// * [chatId]: Chat identifier.
  /// * [inviteLink]: Invite link to be edited.
  /// * [name]: Invite link name; 0-32 characters.
  /// * [expirationDate]: Point in time (Unix timestamp) when the link will expire; pass 0 if never.
  /// * [memberLimit]: The maximum number of chat members that can join the chat via the link simultaneously; 0-99999; pass 0 if not limited.
  /// * [createsJoinRequest]: Pass true if users joining the chat via the link need to be approved by chat administrators. In this case, member_limit must be 0.
  ///
  /// [ChatInviteLink] is returned on completion.
  const EditChatInviteLink({
    required this.chatId,
    required this.inviteLink,
    required this.name,
    required this.expirationDate,
    required this.memberLimit,
    required this.createsJoinRequest,
  });

  /// Chat identifier
  final int chatId;

  /// Invite link to be edited
  final String inviteLink;

  /// Invite link name; 0-32 characters
  final String name;

  /// Point in time (Unix timestamp) when the link will expire; pass 0 if never
  final int expirationDate;

  /// The maximum number of chat members that can join the chat via the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;

  /// Pass true if users joining the chat via the link need to be approved by chat administrators. In this case, member_limit must be 0
  final bool createsJoinRequest;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "name": name,
      "expiration_date": expirationDate,
      "member_limit": memberLimit,
      "creates_join_request": createsJoinRequest,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [invite_link]: Invite link to be edited
  /// * [name]: Invite link name; 0-32 characters
  /// * [expiration_date]: Point in time (Unix timestamp) when the link will expire; pass 0 if never
  /// * [member_limit]: The maximum number of chat members that can join the chat via the link simultaneously; 0-99999; pass 0 if not limited
  /// * [creates_join_request]: Pass true if users joining the chat via the link need to be approved by chat administrators. In this case, member_limit must be 0
  EditChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
    String? name,
    int? expirationDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) => EditChatInviteLink(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    name: name ?? this.name,
    expirationDate: expirationDate ?? this.expirationDate,
    memberLimit: memberLimit ?? this.memberLimit,
    createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
  );

  /// TDLib object type
  static const String defaultObjectId = 'editChatInviteLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
