part of '../tdapi.dart';

/// **CreateNewBasicGroupChat** *(createNewBasicGroupChat)* - TDLib function
///
/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns information about the newly created chat.
///
/// * [userIds]: Identifiers of users to be added to the basic group; may be empty to create a basic group without other members.
/// * [title]: Title of the new basic group; 1-128 characters.
/// * [messageAutoDeleteTime]: Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
///
/// [CreatedBasicGroupChat] is returned on completion.
final class CreateNewBasicGroupChat extends TdFunction {
  /// **CreateNewBasicGroupChat** *(createNewBasicGroupChat)* - TDLib function
  ///
  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns information about the newly created chat.
  ///
  /// * [userIds]: Identifiers of users to be added to the basic group; may be empty to create a basic group without other members.
  /// * [title]: Title of the new basic group; 1-128 characters.
  /// * [messageAutoDeleteTime]: Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
  ///
  /// [CreatedBasicGroupChat] is returned on completion.
  const CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
    required this.messageAutoDeleteTime,
  });

  /// Identifiers of users to be added to the basic group; may be empty to create a basic group without other members
  final List<int> userIds;

  /// Title of the new basic group; 1-128 characters
  final String title;

  /// Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final int messageAutoDeleteTime;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "user_ids": userIds.map((i) => i).toList(),
      "title": title,
      "message_auto_delete_time": messageAutoDeleteTime,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_ids]: Identifiers of users to be added to the basic group; may be empty to create a basic group without other members
  /// * [title]: Title of the new basic group; 1-128 characters
  /// * [message_auto_delete_time]: Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  CreateNewBasicGroupChat copyWith({
    List<int>? userIds,
    String? title,
    int? messageAutoDeleteTime,
  }) => CreateNewBasicGroupChat(
    userIds: userIds ?? this.userIds,
    title: title ?? this.title,
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
  );

  /// TDLib object type
  static const String defaultObjectId = 'createNewBasicGroupChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
