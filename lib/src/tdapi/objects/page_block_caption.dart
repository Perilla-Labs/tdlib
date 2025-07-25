part of '../tdapi.dart';

/// **PageBlockCaption** *(pageBlockCaption)* - basic class
///
/// Contains a caption of another block.
///
/// * [text]: Content of the caption.
/// * [credit]: Block credit (like HTML tag <cite>).
final class PageBlockCaption extends TdObject {
  /// **PageBlockCaption** *(pageBlockCaption)* - basic class
  ///
  /// Contains a caption of another block.
  ///
  /// * [text]: Content of the caption.
  /// * [credit]: Block credit (like HTML tag <cite>).
  const PageBlockCaption({required this.text, required this.credit});

  /// Content of the caption
  final RichText text;

  /// Block credit (like HTML tag <cite>)
  final RichText credit;

  /// Parse from a json
  factory PageBlockCaption.fromJson(Map<String, dynamic> json) =>
      PageBlockCaption(
        text: RichText.fromJson(json['text']),
        credit: RichText.fromJson(json['credit']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "credit": credit.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Content of the caption
  /// * [credit]: Block credit (like HTML tag <cite>)
  PageBlockCaption copyWith({RichText? text, RichText? credit}) =>
      PageBlockCaption(text: text ?? this.text, credit: credit ?? this.credit);

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockCaption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
