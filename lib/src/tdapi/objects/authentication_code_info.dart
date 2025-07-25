part of '../tdapi.dart';

/// **AuthenticationCodeInfo** *(authenticationCodeInfo)* - basic class
///
/// Information about the authentication code that was sent.
///
/// * [phoneNumber]: A phone number that is being authenticated.
/// * [type]: The way the code was sent to the user.
/// * [nextType]: The way the next code will be sent to the user; may be null *(optional)*.
/// * [timeout]: Timeout before the code can be re-sent, in seconds.
final class AuthenticationCodeInfo extends TdObject {
  /// **AuthenticationCodeInfo** *(authenticationCodeInfo)* - basic class
  ///
  /// Information about the authentication code that was sent.
  ///
  /// * [phoneNumber]: A phone number that is being authenticated.
  /// * [type]: The way the code was sent to the user.
  /// * [nextType]: The way the next code will be sent to the user; may be null *(optional)*.
  /// * [timeout]: Timeout before the code can be re-sent, in seconds.
  const AuthenticationCodeInfo({
    required this.phoneNumber,
    required this.type,
    this.nextType,
    required this.timeout,
    this.extra,
    this.clientId,
  });

  /// A phone number that is being authenticated
  final String phoneNumber;

  /// The way the code was sent to the user
  final AuthenticationCodeType type;

  /// The way the next code will be sent to the user; may be null
  final AuthenticationCodeType? nextType;

  /// Timeout before the code can be re-sent, in seconds
  final int timeout;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) =>
      AuthenticationCodeInfo(
        phoneNumber: json['phone_number'],
        type: AuthenticationCodeType.fromJson(json['type']),
        nextType: json['next_type'] == null
            ? null
            : AuthenticationCodeType.fromJson(json['next_type']),
        timeout: json['timeout'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "phone_number": phoneNumber,
      "type": type.toJson(),
      "next_type": nextType?.toJson(),
      "timeout": timeout,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [phone_number]: A phone number that is being authenticated
  /// * [type]: The way the code was sent to the user
  /// * [next_type]: The way the next code will be sent to the user; may be null
  /// * [timeout]: Timeout before the code can be re-sent, in seconds
  AuthenticationCodeInfo copyWith({
    String? phoneNumber,
    AuthenticationCodeType? type,
    AuthenticationCodeType? nextType,
    int? timeout,
    dynamic extra,
    int? clientId,
  }) => AuthenticationCodeInfo(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    type: type ?? this.type,
    nextType: nextType ?? this.nextType,
    timeout: timeout ?? this.timeout,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'authenticationCodeInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
