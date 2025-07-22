part of '../tdapi.dart';

/// **UpgradedGiftModel** *(upgradedGiftModel)* - basic class
///
/// Describes a model of an upgraded gift.
///
/// * [name]: Name of the model.
/// * [sticker]: The sticker representing the upgraded gift.
/// * [rarityPerMille]: The number of upgraded gifts that receive this model for each 1000 gifts upgraded.
final class UpgradedGiftModel extends TdObject {
  /// **UpgradedGiftModel** *(upgradedGiftModel)* - basic class
  ///
  /// Describes a model of an upgraded gift.
  ///
  /// * [name]: Name of the model.
  /// * [sticker]: The sticker representing the upgraded gift.
  /// * [rarityPerMille]: The number of upgraded gifts that receive this model for each 1000 gifts upgraded.
  const UpgradedGiftModel({
    required this.name,
    required this.sticker,
    required this.rarityPerMille,
  });

  /// Name of the model
  final String name;

  /// The sticker representing the upgraded gift
  final Sticker sticker;

  /// The number of upgraded gifts that receive this model for each 1000 gifts upgraded
  final int rarityPerMille;

  /// Parse from a json
  factory UpgradedGiftModel.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftModel(
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
  /// * [name]: Name of the model
  /// * [sticker]: The sticker representing the upgraded gift
  /// * [rarity_per_mille]: The number of upgraded gifts that receive this model for each 1000 gifts upgraded
  UpgradedGiftModel copyWith({
    String? name,
    Sticker? sticker,
    int? rarityPerMille,
  }) => UpgradedGiftModel(
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
    rarityPerMille: rarityPerMille ?? this.rarityPerMille,
  );

  /// TDLib object type
  static const String defaultObjectId = 'upgradedGiftModel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
