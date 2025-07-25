part of '../tdapi.dart';

/// **MessagePosition** *(messagePosition)* - basic class
///
/// Contains information about a message in a specific position.
///
/// * [position]: 0-based message position in the full list of suitable messages.
/// * [messageId]: Message identifier.
/// * [date]: Point in time (Unix timestamp) when the message was sent.
final class MessagePosition extends TdObject {
  /// **MessagePosition** *(messagePosition)* - basic class
  ///
  /// Contains information about a message in a specific position.
  ///
  /// * [position]: 0-based message position in the full list of suitable messages.
  /// * [messageId]: Message identifier.
  /// * [date]: Point in time (Unix timestamp) when the message was sent.
  const MessagePosition({
    required this.position,
    required this.messageId,
    required this.date,
  });

  /// 0-based message position in the full list of suitable messages
  final int position;

  /// Message identifier
  final int messageId;

  /// Point in time (Unix timestamp) when the message was sent
  final int date;

  /// Parse from a json
  factory MessagePosition.fromJson(Map<String, dynamic> json) =>
      MessagePosition(
        position: json['position'],
        messageId: json['message_id'],
        date: json['date'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "position": position,
      "message_id": messageId,
      "date": date,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [position]: 0-based message position in the full list of suitable messages
  /// * [message_id]: Message identifier
  /// * [date]: Point in time (Unix timestamp) when the message was sent
  MessagePosition copyWith({int? position, int? messageId, int? date}) =>
      MessagePosition(
        position: position ?? this.position,
        messageId: messageId ?? this.messageId,
        date: date ?? this.date,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messagePosition';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
