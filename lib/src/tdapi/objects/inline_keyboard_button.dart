part of '../tdapi.dart';

/// **InlineKeyboardButton** *(inlineKeyboardButton)* - basic class
///
/// Represents a single button in an inline keyboard.
///
/// * [text]: Text of the button.
/// * [type]: Type of the button.
final class InlineKeyboardButton extends TdObject {
  /// **InlineKeyboardButton** *(inlineKeyboardButton)* - basic class
  ///
  /// Represents a single button in an inline keyboard.
  ///
  /// * [text]: Text of the button.
  /// * [type]: Type of the button.
  const InlineKeyboardButton({required this.text, required this.type});

  /// Text of the button
  final String text;

  /// Type of the button
  final InlineKeyboardButtonType type;

  /// Parse from a json
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) =>
      InlineKeyboardButton(
        text: json['text'],
        type: InlineKeyboardButtonType.fromJson(json['type']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text, "type": type.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text of the button
  /// * [type]: Type of the button
  InlineKeyboardButton copyWith({
    String? text,
    InlineKeyboardButtonType? type,
  }) => InlineKeyboardButton(text: text ?? this.text, type: type ?? this.type);

  /// TDLib object type
  static const String defaultObjectId = 'inlineKeyboardButton';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
