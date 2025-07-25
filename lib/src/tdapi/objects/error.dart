part of '../tdapi.dart';

/// **TdError** *(error)* - basic class
///
/// An object of this type can be returned on every function call, in case of an error.
///
/// * [code]: Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user.
/// * [message]: Error message; subject to future changes.
final class TdError extends TdObject {
  /// **TdError** *(error)* - basic class
  ///
  /// An object of this type can be returned on every function call, in case of an error.
  ///
  /// * [code]: Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user.
  /// * [message]: Error message; subject to future changes.
  const TdError({
    required this.code,
    required this.message,
    this.extra,
    this.clientId,
  });

  /// Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
  final int code;

  /// Error message; subject to future changes
  final String message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory TdError.fromJson(Map<String, dynamic> json) => TdError(
    code: json['code'],
    message: json['message'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "code": code, "message": message};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [code]: Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
  /// * [message]: Error message; subject to future changes
  TdError copyWith({
    int? code,
    String? message,
    dynamic extra,
    int? clientId,
  }) => TdError(
    code: code ?? this.code,
    message: message ?? this.message,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'error';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
