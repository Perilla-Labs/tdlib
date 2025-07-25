part of '../tdapi.dart';

/// **ForumTopicInfo** *(forumTopicInfo)* - basic class
///
/// Contains basic information about a forum topic.
///
/// * [chatId]: Identifier of the forum chat to which the topic belongs.
/// * [forumTopicId]: Forum topic identifier of the topic.
/// * [messageThreadId]: Message thread identifier of the topic.
/// * [name]: Name of the topic.
/// * [icon]: Icon of the topic.
/// * [creationDate]: Point in time (Unix timestamp) when the topic was created.
/// * [creatorId]: Identifier of the creator of the topic.
/// * [isGeneral]: True, if the topic is the General topic list.
/// * [isOutgoing]: True, if the topic was created by the current user.
/// * [isClosed]: True, if the topic is closed.
/// * [isHidden]: True, if the topic is hidden above the topic list and closed; for General topic only.
final class ForumTopicInfo extends TdObject {
  /// **ForumTopicInfo** *(forumTopicInfo)* - basic class
  ///
  /// Contains basic information about a forum topic.
  ///
  /// * [chatId]: Identifier of the forum chat to which the topic belongs.
  /// * [forumTopicId]: Forum topic identifier of the topic.
  /// * [messageThreadId]: Message thread identifier of the topic.
  /// * [name]: Name of the topic.
  /// * [icon]: Icon of the topic.
  /// * [creationDate]: Point in time (Unix timestamp) when the topic was created.
  /// * [creatorId]: Identifier of the creator of the topic.
  /// * [isGeneral]: True, if the topic is the General topic list.
  /// * [isOutgoing]: True, if the topic was created by the current user.
  /// * [isClosed]: True, if the topic is closed.
  /// * [isHidden]: True, if the topic is hidden above the topic list and closed; for General topic only.
  const ForumTopicInfo({
    required this.chatId,
    required this.forumTopicId,
    required this.messageThreadId,
    required this.name,
    required this.icon,
    required this.creationDate,
    required this.creatorId,
    required this.isGeneral,
    required this.isOutgoing,
    required this.isClosed,
    required this.isHidden,
    this.extra,
    this.clientId,
  });

  /// Identifier of the forum chat to which the topic belongs
  final int chatId;

  /// Forum topic identifier of the topic
  final int forumTopicId;

  /// Message thread identifier of the topic
  final int messageThreadId;

  /// Name of the topic
  final String name;

  /// Icon of the topic
  final ForumTopicIcon icon;

  /// Point in time (Unix timestamp) when the topic was created
  final int creationDate;

  /// Identifier of the creator of the topic
  final MessageSender creatorId;

  /// True, if the topic is the General topic list
  final bool isGeneral;

  /// True, if the topic was created by the current user
  final bool isOutgoing;

  /// True, if the topic is closed
  final bool isClosed;

  /// True, if the topic is hidden above the topic list and closed; for General topic only
  final bool isHidden;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ForumTopicInfo.fromJson(Map<String, dynamic> json) => ForumTopicInfo(
    chatId: json['chat_id'],
    forumTopicId: json['forum_topic_id'],
    messageThreadId: json['message_thread_id'],
    name: json['name'],
    icon: ForumTopicIcon.fromJson(json['icon']),
    creationDate: json['creation_date'],
    creatorId: MessageSender.fromJson(json['creator_id']),
    isGeneral: json['is_general'],
    isOutgoing: json['is_outgoing'],
    isClosed: json['is_closed'],
    isHidden: json['is_hidden'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "forum_topic_id": forumTopicId,
      "message_thread_id": messageThreadId,
      "name": name,
      "icon": icon.toJson(),
      "creation_date": creationDate,
      "creator_id": creatorId.toJson(),
      "is_general": isGeneral,
      "is_outgoing": isOutgoing,
      "is_closed": isClosed,
      "is_hidden": isHidden,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the forum chat to which the topic belongs
  /// * [forum_topic_id]: Forum topic identifier of the topic
  /// * [message_thread_id]: Message thread identifier of the topic
  /// * [name]: Name of the topic
  /// * [icon]: Icon of the topic
  /// * [creation_date]: Point in time (Unix timestamp) when the topic was created
  /// * [creator_id]: Identifier of the creator of the topic
  /// * [is_general]: True, if the topic is the General topic list
  /// * [is_outgoing]: True, if the topic was created by the current user
  /// * [is_closed]: True, if the topic is closed
  /// * [is_hidden]: True, if the topic is hidden above the topic list and closed; for General topic only
  ForumTopicInfo copyWith({
    int? chatId,
    int? forumTopicId,
    int? messageThreadId,
    String? name,
    ForumTopicIcon? icon,
    int? creationDate,
    MessageSender? creatorId,
    bool? isGeneral,
    bool? isOutgoing,
    bool? isClosed,
    bool? isHidden,
    dynamic extra,
    int? clientId,
  }) => ForumTopicInfo(
    chatId: chatId ?? this.chatId,
    forumTopicId: forumTopicId ?? this.forumTopicId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    name: name ?? this.name,
    icon: icon ?? this.icon,
    creationDate: creationDate ?? this.creationDate,
    creatorId: creatorId ?? this.creatorId,
    isGeneral: isGeneral ?? this.isGeneral,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isClosed: isClosed ?? this.isClosed,
    isHidden: isHidden ?? this.isHidden,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'forumTopicInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
