part of '../tdapi.dart';

/// **UpgradedGiftSymbol** *(upgradedGiftSymbol)* - basic class
///
/// Describes a symbol shown on the pattern of an upgraded gift.
///
/// * [name]: Name of the symbol.
/// * [sticker]: The sticker representing the symbol.
/// * [rarityPerMille]: The number of upgraded gifts that receive this symbol for each 1000 gifts upgraded.
final class UpgradedGiftSymbol extends TdObject {
  /// **UpgradedGiftSymbol** *(upgradedGiftSymbol)* - basic class
  ///
  /// Describes a symbol shown on the pattern of an upgraded gift.
  ///
  /// * [name]: Name of the symbol.
  /// * [sticker]: The sticker representing the symbol.
  /// * [rarityPerMille]: The number of upgraded gifts that receive this symbol for each 1000 gifts upgraded.
  const UpgradedGiftSymbol({
    required this.name,
    required this.sticker,
    required this.rarityPerMille,
  });

  /// Name of the symbol
  final String name;

  /// The sticker representing the symbol
  final Sticker sticker;

  /// The number of upgraded gifts that receive this symbol for each 1000 gifts upgraded
  final int rarityPerMille;

  /// Parse from a json
  factory UpgradedGiftSymbol.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftSymbol(
        name: json['name'],
        sticker: Sticker.fromJson(json['sticker']),
        rarityPerMille: json['rarity_per_mille'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "name": name,
      "sticker": sticker.toJson(),
      "rarity_per_mille": rarityPerMille,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Name of the symbol
  /// * [sticker]: The sticker representing the symbol
  /// * [rarity_per_mille]: The number of upgraded gifts that receive this symbol for each 1000 gifts upgraded
  UpgradedGiftSymbol copyWith({
    String? name,
    Sticker? sticker,
    int? rarityPerMille,
  }) => UpgradedGiftSymbol(
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
    rarityPerMille: rarityPerMille ?? this.rarityPerMille,
  );

  /// TDLib object type
  static const String defaultObjectId = 'upgradedGiftSymbol';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
