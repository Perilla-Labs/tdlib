part of '../tdapi.dart';

/// **CheckAuthenticationPremiumPurchase** *(checkAuthenticationPremiumPurchase)* - TDLib function
///
/// Checks whether an in-store purchase of Telegram Premium is possible before authorization. Works only when the current authorization state is authorizationStateWaitPremiumPurchase.
///
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
///
/// [Ok] is returned on completion.
final class CheckAuthenticationPremiumPurchase extends TdFunction {
  /// **CheckAuthenticationPremiumPurchase** *(checkAuthenticationPremiumPurchase)* - TDLib function
  ///
  /// Checks whether an in-store purchase of Telegram Premium is possible before authorization. Works only when the current authorization state is authorizationStateWaitPremiumPurchase.
  ///
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  ///
  /// [Ok] is returned on completion.
  const CheckAuthenticationPremiumPurchase({
    required this.currency,
    required this.amount,
  });

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "currency": currency,
      "amount": amount,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  CheckAuthenticationPremiumPurchase copyWith({
    String? currency,
    int? amount,
  }) => CheckAuthenticationPremiumPurchase(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
  );

  /// TDLib object type
  static const String defaultObjectId = 'checkAuthenticationPremiumPurchase';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
