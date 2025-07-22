part of '../tdapi.dart';

/// **UpgradedGiftBackdrop** *(upgradedGiftBackdrop)* - basic class
///
/// Describes a backdrop of an upgraded gift.
///
/// * [id]: Unique identifier of the backdrop.
/// * [name]: Name of the backdrop.
/// * [colors]: Colors of the backdrop.
/// * [rarityPerMille]: The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded.
final class UpgradedGiftBackdrop extends TdObject {
  /// **UpgradedGiftBackdrop** *(upgradedGiftBackdrop)* - basic class
  ///
  /// Describes a backdrop of an upgraded gift.
  ///
  /// * [id]: Unique identifier of the backdrop.
  /// * [name]: Name of the backdrop.
  /// * [colors]: Colors of the backdrop.
  /// * [rarityPerMille]: The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded.
  const UpgradedGiftBackdrop({
    required this.id,
    required this.name,
    required this.colors,
    required this.rarityPerMille,
  });

  /// Unique identifier of the backdrop
  final int id;

  /// Name of the backdrop
  final String name;

  /// Colors of the backdrop
  final UpgradedGiftBackdropColors colors;

  /// The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded
  final int rarityPerMille;

  /// Parse from a json
  factory UpgradedGiftBackdrop.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftBackdrop(
        id: json['id'],
        name: json['name'],
        colors: UpgradedGiftBackdropColors.fromJson(json['colors']),
        rarityPerMille: json['rarity_per_mille'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "name": name,
      "colors": colors.toJson(),
      "rarity_per_mille": rarityPerMille,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the backdrop
  /// * [name]: Name of the backdrop
  /// * [colors]: Colors of the backdrop
  /// * [rarity_per_mille]: The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded
  UpgradedGiftBackdrop copyWith({
    int? id,
    String? name,
    UpgradedGiftBackdropColors? colors,
    int? rarityPerMille,
  }) => UpgradedGiftBackdrop(
    id: id ?? this.id,
    name: name ?? this.name,
    colors: colors ?? this.colors,
    rarityPerMille: rarityPerMille ?? this.rarityPerMille,
  );

  /// TDLib object type
  static const String defaultObjectId = 'upgradedGiftBackdrop';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
