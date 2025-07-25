part of '../tdapi.dart';

/// **GetSuggestedStickerSetName** *(getSuggestedStickerSetName)* - TDLib function
///
/// Returns a suggested name for a new sticker set with a given title.
///
/// * [title]: Sticker set title; 1-64 characters.
///
/// [Text] is returned on completion.
final class GetSuggestedStickerSetName extends TdFunction {
  /// **GetSuggestedStickerSetName** *(getSuggestedStickerSetName)* - TDLib function
  ///
  /// Returns a suggested name for a new sticker set with a given title.
  ///
  /// * [title]: Sticker set title; 1-64 characters.
  ///
  /// [Text] is returned on completion.
  const GetSuggestedStickerSetName({required this.title});

  /// Sticker set title; 1-64 characters
  final String title;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {"@type": defaultObjectId, "title": title, "@extra": extra};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Sticker set title; 1-64 characters
  GetSuggestedStickerSetName copyWith({String? title}) =>
      GetSuggestedStickerSetName(title: title ?? this.title);

  /// TDLib object type
  static const String defaultObjectId = 'getSuggestedStickerSetName';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
