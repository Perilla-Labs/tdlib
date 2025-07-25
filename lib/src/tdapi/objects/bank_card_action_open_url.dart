part of '../tdapi.dart';

/// **BankCardActionOpenUrl** *(bankCardActionOpenUrl)* - basic class
///
/// Describes an action associated with a bank card number.
///
/// * [text]: Action text.
/// * [url]: The URL to be opened.
final class BankCardActionOpenUrl extends TdObject {
  /// **BankCardActionOpenUrl** *(bankCardActionOpenUrl)* - basic class
  ///
  /// Describes an action associated with a bank card number.
  ///
  /// * [text]: Action text.
  /// * [url]: The URL to be opened.
  const BankCardActionOpenUrl({required this.text, required this.url});

  /// Action text
  final String text;

  /// The URL to be opened
  final String url;

  /// Parse from a json
  factory BankCardActionOpenUrl.fromJson(Map<String, dynamic> json) =>
      BankCardActionOpenUrl(text: json['text'], url: json['url']);

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text, "url": url};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Action text
  /// * [url]: The URL to be opened
  BankCardActionOpenUrl copyWith({String? text, String? url}) =>
      BankCardActionOpenUrl(text: text ?? this.text, url: url ?? this.url);

  /// TDLib object type
  static const String defaultObjectId = 'bankCardActionOpenUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
