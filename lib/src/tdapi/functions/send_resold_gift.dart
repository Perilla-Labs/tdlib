part of '../tdapi.dart';

/// **SendResoldGift** *(sendResoldGift)* - TDLib function
///
/// Sends an upgraded gift that is available for resale to another user or channel chat; gifts already owned by the current user. must be transferred using transferGift and can't be passed to the method.
///
/// * [giftName]: Name of the upgraded gift to send.
/// * [ownerId]: Identifier of the user or the channel chat that will receive the gift.
/// * [starCount]: The amount of Telegram Stars required to pay for the gift.
///
/// [Ok] is returned on completion.
final class SendResoldGift extends TdFunction {
  /// **SendResoldGift** *(sendResoldGift)* - TDLib function
  ///
  /// Sends an upgraded gift that is available for resale to another user or channel chat; gifts already owned by the current user. must be transferred using transferGift and can't be passed to the method.
  ///
  /// * [giftName]: Name of the upgraded gift to send.
  /// * [ownerId]: Identifier of the user or the channel chat that will receive the gift.
  /// * [starCount]: The amount of Telegram Stars required to pay for the gift.
  ///
  /// [Ok] is returned on completion.
  const SendResoldGift({
    required this.giftName,
    required this.ownerId,
    required this.starCount,
  });

  /// Name of the upgraded gift to send
  final String giftName;

  /// Identifier of the user or the channel chat that will receive the gift
  final MessageSender ownerId;

  /// The amount of Telegram Stars required to pay for the gift
  final int starCount;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "gift_name": giftName,
      "owner_id": ownerId.toJson(),
      "star_count": starCount,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [gift_name]: Name of the upgraded gift to send
  /// * [owner_id]: Identifier of the user or the channel chat that will receive the gift
  /// * [star_count]: The amount of Telegram Stars required to pay for the gift
  SendResoldGift copyWith({
    String? giftName,
    MessageSender? ownerId,
    int? starCount,
  }) => SendResoldGift(
    giftName: giftName ?? this.giftName,
    ownerId: ownerId ?? this.ownerId,
    starCount: starCount ?? this.starCount,
  );

  /// TDLib object type
  static const String defaultObjectId = 'sendResoldGift';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
