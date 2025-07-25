part of '../tdapi.dart';

/// **GetLoginUrl** *(getLoginUrl)* - TDLib function
///
/// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button.
///
/// * [chatId]: Chat identifier of the message with the button.
/// * [messageId]: Message identifier of the message with the button.
/// * [buttonId]: Button identifier.
/// * [allowWriteAccess]: Pass true to allow the bot to send messages to the current user.
///
/// [HttpUrl] is returned on completion.
final class GetLoginUrl extends TdFunction {
  /// **GetLoginUrl** *(getLoginUrl)* - TDLib function
  ///
  /// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button.
  ///
  /// * [chatId]: Chat identifier of the message with the button.
  /// * [messageId]: Message identifier of the message with the button.
  /// * [buttonId]: Button identifier.
  /// * [allowWriteAccess]: Pass true to allow the bot to send messages to the current user.
  ///
  /// [HttpUrl] is returned on completion.
  const GetLoginUrl({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.allowWriteAccess,
  });

  /// Chat identifier of the message with the button
  final int chatId;

  /// Message identifier of the message with the button
  final int messageId;

  /// Button identifier
  final int buttonId;

  /// Pass true to allow the bot to send messages to the current user
  final bool allowWriteAccess;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "allow_write_access": allowWriteAccess,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier of the message with the button
  /// * [message_id]: Message identifier of the message with the button
  /// * [button_id]: Button identifier
  /// * [allow_write_access]: Pass true to allow the bot to send messages to the current user
  GetLoginUrl copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    bool? allowWriteAccess,
  }) => GetLoginUrl(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
    allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getLoginUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
