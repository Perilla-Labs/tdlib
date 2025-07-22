part of '../tdapi.dart';

/// **SetGiftResalePrice** *(setGiftResalePrice)* - TDLib function
///
/// Changes resale price of a unique gift owned by the current user.
///
/// * [receivedGiftId]: Identifier of the unique gift.
/// * [resaleStarCount]: The new price for the unique gift; 0 or getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max"). Pass 0 to disallow gift resale.. The current user will receive getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift.
///
/// [Ok] is returned on completion.
final class SetGiftResalePrice extends TdFunction {
  /// **SetGiftResalePrice** *(setGiftResalePrice)* - TDLib function
  ///
  /// Changes resale price of a unique gift owned by the current user.
  ///
  /// * [receivedGiftId]: Identifier of the unique gift.
  /// * [resaleStarCount]: The new price for the unique gift; 0 or getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max"). Pass 0 to disallow gift resale.. The current user will receive getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift.
  ///
  /// [Ok] is returned on completion.
  const SetGiftResalePrice({
    required this.receivedGiftId,
    required this.resaleStarCount,
  });

  /// Identifier of the unique gift
  final String receivedGiftId;

  /// The new price for the unique gift; 0 or getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max"). Pass 0 to disallow gift resale.. The current user will receive getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift
  final int resaleStarCount;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "received_gift_id": receivedGiftId,
      "resale_star_count": resaleStarCount,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [received_gift_id]: Identifier of the unique gift
  /// * [resale_star_count]: The new price for the unique gift; 0 or getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max"). Pass 0 to disallow gift resale.. The current user will receive getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift
  SetGiftResalePrice copyWith({String? receivedGiftId, int? resaleStarCount}) =>
      SetGiftResalePrice(
        receivedGiftId: receivedGiftId ?? this.receivedGiftId,
        resaleStarCount: resaleStarCount ?? this.resaleStarCount,
      );

  /// TDLib object type
  static const String defaultObjectId = 'setGiftResalePrice';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
