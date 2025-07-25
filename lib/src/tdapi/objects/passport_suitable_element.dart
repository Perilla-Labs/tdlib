part of '../tdapi.dart';

/// **PassportSuitableElement** *(passportSuitableElement)* - basic class
///
/// Contains information about a Telegram Passport element that was requested by a service.
///
/// * [type]: Type of the element.
/// * [isSelfieRequired]: True, if a selfie is required with the identity document.
/// * [isTranslationRequired]: True, if a certified English translation is required with the document.
/// * [isNativeNameRequired]: True, if personal details must include the user's name in the language of their country of residence.
final class PassportSuitableElement extends TdObject {
  /// **PassportSuitableElement** *(passportSuitableElement)* - basic class
  ///
  /// Contains information about a Telegram Passport element that was requested by a service.
  ///
  /// * [type]: Type of the element.
  /// * [isSelfieRequired]: True, if a selfie is required with the identity document.
  /// * [isTranslationRequired]: True, if a certified English translation is required with the document.
  /// * [isNativeNameRequired]: True, if personal details must include the user's name in the language of their country of residence.
  const PassportSuitableElement({
    required this.type,
    required this.isSelfieRequired,
    required this.isTranslationRequired,
    required this.isNativeNameRequired,
  });

  /// Type of the element
  final PassportElementType type;

  /// True, if a selfie is required with the identity document
  final bool isSelfieRequired;

  /// True, if a certified English translation is required with the document
  final bool isTranslationRequired;

  /// True, if personal details must include the user's name in the language of their country of residence
  final bool isNativeNameRequired;

  /// Parse from a json
  factory PassportSuitableElement.fromJson(Map<String, dynamic> json) =>
      PassportSuitableElement(
        type: PassportElementType.fromJson(json['type']),
        isSelfieRequired: json['is_selfie_required'],
        isTranslationRequired: json['is_translation_required'],
        isNativeNameRequired: json['is_native_name_required'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "type": type.toJson(),
      "is_selfie_required": isSelfieRequired,
      "is_translation_required": isTranslationRequired,
      "is_native_name_required": isNativeNameRequired,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [type]: Type of the element
  /// * [is_selfie_required]: True, if a selfie is required with the identity document
  /// * [is_translation_required]: True, if a certified English translation is required with the document
  /// * [is_native_name_required]: True, if personal details must include the user's name in the language of their country of residence
  PassportSuitableElement copyWith({
    PassportElementType? type,
    bool? isSelfieRequired,
    bool? isTranslationRequired,
    bool? isNativeNameRequired,
  }) => PassportSuitableElement(
    type: type ?? this.type,
    isSelfieRequired: isSelfieRequired ?? this.isSelfieRequired,
    isTranslationRequired: isTranslationRequired ?? this.isTranslationRequired,
    isNativeNameRequired: isNativeNameRequired ?? this.isNativeNameRequired,
  );

  /// TDLib object type
  static const String defaultObjectId = 'passportSuitableElement';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
