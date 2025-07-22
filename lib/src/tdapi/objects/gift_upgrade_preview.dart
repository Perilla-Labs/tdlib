part of '../tdapi.dart';

/// **GiftUpgradePreview** *(giftUpgradePreview)* - basic class
///
/// Contains examples of possible upgraded gifts for the given regular gift.
///
/// * [models]: Examples of possible models that can be chosen for the gift after upgrade.
/// * [symbols]: Examples of possible symbols that can be chosen for the gift after upgrade.
/// * [backdrops]: Examples of possible backdrops that can be chosen for the gift after upgrade.
final class GiftUpgradePreview extends TdObject {
  /// **GiftUpgradePreview** *(giftUpgradePreview)* - basic class
  ///
  /// Contains examples of possible upgraded gifts for the given regular gift.
  ///
  /// * [models]: Examples of possible models that can be chosen for the gift after upgrade.
  /// * [symbols]: Examples of possible symbols that can be chosen for the gift after upgrade.
  /// * [backdrops]: Examples of possible backdrops that can be chosen for the gift after upgrade.
  const GiftUpgradePreview({
    required this.models,
    required this.symbols,
    required this.backdrops,
    this.extra,
    this.clientId,
  });

  /// Examples of possible models that can be chosen for the gift after upgrade
  final List<UpgradedGiftModel> models;

  /// Examples of possible symbols that can be chosen for the gift after upgrade
  final List<UpgradedGiftSymbol> symbols;

  /// Examples of possible backdrops that can be chosen for the gift after upgrade
  final List<UpgradedGiftBackdrop> backdrops;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory GiftUpgradePreview.fromJson(Map<String, dynamic> json) =>
      GiftUpgradePreview(
        models: List<UpgradedGiftModel>.from(
          (json['models'] ?? [])
              .map((item) => UpgradedGiftModel.fromJson(item))
              .toList(),
        ),
        symbols: List<UpgradedGiftSymbol>.from(
          (json['symbols'] ?? [])
              .map((item) => UpgradedGiftSymbol.fromJson(item))
              .toList(),
        ),
        backdrops: List<UpgradedGiftBackdrop>.from(
          (json['backdrops'] ?? [])
              .map((item) => UpgradedGiftBackdrop.fromJson(item))
              .toList(),
        ),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "models": models.map((i) => i.toJson()).toList(),
      "symbols": symbols.map((i) => i.toJson()).toList(),
      "backdrops": backdrops.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [models]: Examples of possible models that can be chosen for the gift after upgrade
  /// * [symbols]: Examples of possible symbols that can be chosen for the gift after upgrade
  /// * [backdrops]: Examples of possible backdrops that can be chosen for the gift after upgrade
  GiftUpgradePreview copyWith({
    List<UpgradedGiftModel>? models,
    List<UpgradedGiftSymbol>? symbols,
    List<UpgradedGiftBackdrop>? backdrops,
    dynamic extra,
    int? clientId,
  }) => GiftUpgradePreview(
    models: models ?? this.models,
    symbols: symbols ?? this.symbols,
    backdrops: backdrops ?? this.backdrops,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'giftUpgradePreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
