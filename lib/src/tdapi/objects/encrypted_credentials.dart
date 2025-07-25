part of '../tdapi.dart';

/// **EncryptedCredentials** *(encryptedCredentials)* - basic class
///
/// Contains encrypted Telegram Passport data credentials.
///
/// * [data]: The encrypted credentials.
/// * [hash]: The decrypted data hash.
/// * [secret]: Secret for data decryption, encrypted with the service's public key.
final class EncryptedCredentials extends TdObject {
  /// **EncryptedCredentials** *(encryptedCredentials)* - basic class
  ///
  /// Contains encrypted Telegram Passport data credentials.
  ///
  /// * [data]: The encrypted credentials.
  /// * [hash]: The decrypted data hash.
  /// * [secret]: Secret for data decryption, encrypted with the service's public key.
  const EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  /// The encrypted credentials
  final String data;

  /// The decrypted data hash
  final String hash;

  /// Secret for data decryption, encrypted with the service's public key
  final String secret;

  /// Parse from a json
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) =>
      EncryptedCredentials(
        data: json['data'],
        hash: json['hash'],
        secret: json['secret'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "data": data,
      "hash": hash,
      "secret": secret,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [data]: The encrypted credentials
  /// * [hash]: The decrypted data hash
  /// * [secret]: Secret for data decryption, encrypted with the service's public key
  EncryptedCredentials copyWith({String? data, String? hash, String? secret}) =>
      EncryptedCredentials(
        data: data ?? this.data,
        hash: hash ?? this.hash,
        secret: secret ?? this.secret,
      );

  /// TDLib object type
  static const String defaultObjectId = 'encryptedCredentials';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
