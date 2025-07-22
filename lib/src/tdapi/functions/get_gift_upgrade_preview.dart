part of '../tdapi.dart';

/// **GetGiftUpgradePreview** *(getGiftUpgradePreview)* - TDLib function
///
/// Returns examples of possible upgraded gifts for a regular gift.
///
/// * [giftId]: Identifier of the gift.
///
/// [GiftUpgradePreview] is returned on completion.
final class GetGiftUpgradePreview extends TdFunction {
  /// **GetGiftUpgradePreview** *(getGiftUpgradePreview)* - TDLib function
  ///
  /// Returns examples of possible upgraded gifts for a regular gift.
  ///
  /// * [giftId]: Identifier of the gift.
  ///
  /// [GiftUpgradePreview] is returned on completion.
  const GetGiftUpgradePreview({required this.giftId});

  /// Identifier of the gift
  final int giftId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {"@type": defaultObjectId, "gift_id": giftId, "@extra": extra};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [gift_id]: Identifier of the gift
  GetGiftUpgradePreview copyWith({int? giftId}) =>
      GetGiftUpgradePreview(giftId: giftId ?? this.giftId);

  /// TDLib object type
  static const String defaultObjectId = 'getGiftUpgradePreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
