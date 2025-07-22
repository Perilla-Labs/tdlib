part of '../tdapi.dart';

final class SendReaction extends TdFunction {
  const SendReaction({required this.msgId, required this.reactions});

  /// Target message
  final int msgId;

  /// Information about the message or story to be replied; pass null if none
  final List<ReactionType> reactions;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "msg_id": msgId,
      "reactions": reactions.map((e) => e.toJson()).toList(),
      "@extra": extra,
    };
  }

  /// TDLib object type
  static const String defaultObjectId = 'sendReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
