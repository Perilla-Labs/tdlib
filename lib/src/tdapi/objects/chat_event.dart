part of '../tdapi.dart';

/// **ChatEvent** *(chatEvent)* - basic class
///
/// Represents a chat event.
///
/// * [id]: Chat event identifier.
/// * [date]: Point in time (Unix timestamp) when the event happened.
/// * [memberId]: Identifier of the user or chat who performed the action.
/// * [action]: The action.
final class ChatEvent extends TdObject {
  /// **ChatEvent** *(chatEvent)* - basic class
  ///
  /// Represents a chat event.
  ///
  /// * [id]: Chat event identifier.
  /// * [date]: Point in time (Unix timestamp) when the event happened.
  /// * [memberId]: Identifier of the user or chat who performed the action.
  /// * [action]: The action.
  const ChatEvent({
    required this.id,
    required this.date,
    required this.memberId,
    required this.action,
  });

  /// Chat event identifier
  final int id;

  /// Point in time (Unix timestamp) when the event happened
  final int date;

  /// Identifier of the user or chat who performed the action
  final MessageSender memberId;

  /// The action
  final ChatEventAction action;

  /// Parse from a json
  factory ChatEvent.fromJson(Map<String, dynamic> json) => ChatEvent(
    id: json['id'] is int ? json['id'] : int.parse(json['id']),
    date: json['date'],
    memberId: MessageSender.fromJson(json['member_id']),
    action: ChatEventAction.fromJson(json['action']),
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "date": date,
      "member_id": memberId.toJson(),
      "action": action.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Chat event identifier
  /// * [date]: Point in time (Unix timestamp) when the event happened
  /// * [member_id]: Identifier of the user or chat who performed the action
  /// * [action]: The action
  ChatEvent copyWith({
    int? id,
    int? date,
    MessageSender? memberId,
    ChatEventAction? action,
  }) => ChatEvent(
    id: id ?? this.id,
    date: date ?? this.date,
    memberId: memberId ?? this.memberId,
    action: action ?? this.action,
  );

  /// TDLib object type
  static const String defaultObjectId = 'chatEvent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
