part of '../tdapi.dart';

/// **Gift** *(gift)* - basic class
///
/// Describes a gift that can be sent to another user or channel chat.
///
/// * [id]: Unique identifier of the gift.
/// * [sticker]: The sticker representing the gift.
/// * [starCount]: Number of Telegram Stars that must be paid for the gift.
/// * [defaultSellStarCount]: Number of Telegram Stars that can be claimed by the receiver instead of the regular gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed.
/// * [upgradeStarCount]: Number of Telegram Stars that must be paid to upgrade the gift; 0 if upgrade isn't possible.
/// * [isForBirthday]: True, if the gift is a birthday gift.
/// * [remainingCount]: Number of remaining times the gift can be purchased; 0 if not limited or the gift was sold out.
/// * [totalCount]: Number of total times the gift can be purchased; 0 if not limited.
/// * [firstSendDate]: Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only.
/// * [lastSendDate]: Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only.
final class Gift extends TdObject {
  /// **Gift** *(gift)* - basic class
  ///
  /// Describes a gift that can be sent to another user or channel chat.
  ///
  /// * [id]: Unique identifier of the gift.
  /// * [sticker]: The sticker representing the gift.
  /// * [starCount]: Number of Telegram Stars that must be paid for the gift.
  /// * [defaultSellStarCount]: Number of Telegram Stars that can be claimed by the receiver instead of the regular gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed.
  /// * [upgradeStarCount]: Number of Telegram Stars that must be paid to upgrade the gift; 0 if upgrade isn't possible.
  /// * [isForBirthday]: True, if the gift is a birthday gift.
  /// * [remainingCount]: Number of remaining times the gift can be purchased; 0 if not limited or the gift was sold out.
  /// * [totalCount]: Number of total times the gift can be purchased; 0 if not limited.
  /// * [firstSendDate]: Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only.
  /// * [lastSendDate]: Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only.
  const Gift({
    required this.id,
    required this.sticker,
    required this.starCount,
    required this.defaultSellStarCount,
    required this.upgradeStarCount,
    required this.isForBirthday,
    required this.remainingCount,
    required this.totalCount,
    required this.firstSendDate,
    required this.lastSendDate,
  });

  /// Unique identifier of the gift
  final int id;

  /// The sticker representing the gift
  final Sticker sticker;

  /// Number of Telegram Stars that must be paid for the gift
  final int starCount;

  /// Number of Telegram Stars that can be claimed by the receiver instead of the regular gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed
  final int defaultSellStarCount;

  /// Number of Telegram Stars that must be paid to upgrade the gift; 0 if upgrade isn't possible
  final int upgradeStarCount;

  /// True, if the gift is a birthday gift
  final bool isForBirthday;

  /// Number of remaining times the gift can be purchased; 0 if not limited or the gift was sold out
  final int remainingCount;

  /// Number of total times the gift can be purchased; 0 if not limited
  final int totalCount;

  /// Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only
  final int firstSendDate;

  /// Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only
  final int lastSendDate;

  /// Parse from a json
  factory Gift.fromJson(Map<String, dynamic> json) => Gift(
    id: json['id'] is int ? json['id'] : int.parse(json['id']),
    sticker: Sticker.fromJson(json['sticker']),
    starCount: json['star_count'],
    defaultSellStarCount: json['default_sell_star_count'],
    upgradeStarCount: json['upgrade_star_count'],
    isForBirthday: json['is_for_birthday'],
    remainingCount: json['remaining_count'],
    totalCount: json['total_count'],
    firstSendDate: json['first_send_date'],
    lastSendDate: json['last_send_date'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sticker": sticker.toJson(),
      "star_count": starCount,
      "default_sell_star_count": defaultSellStarCount,
      "upgrade_star_count": upgradeStarCount,
      "is_for_birthday": isForBirthday,
      "remaining_count": remainingCount,
      "total_count": totalCount,
      "first_send_date": firstSendDate,
      "last_send_date": lastSendDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the gift
  /// * [sticker]: The sticker representing the gift
  /// * [star_count]: Number of Telegram Stars that must be paid for the gift
  /// * [default_sell_star_count]: Number of Telegram Stars that can be claimed by the receiver instead of the regular gift by default. If the gift was paid with just bought Telegram Stars, then full value can be claimed
  /// * [upgrade_star_count]: Number of Telegram Stars that must be paid to upgrade the gift; 0 if upgrade isn't possible
  /// * [is_for_birthday]: True, if the gift is a birthday gift
  /// * [remaining_count]: Number of remaining times the gift can be purchased; 0 if not limited or the gift was sold out
  /// * [total_count]: Number of total times the gift can be purchased; 0 if not limited
  /// * [first_send_date]: Point in time (Unix timestamp) when the gift was send for the first time; for sold out gifts only
  /// * [last_send_date]: Point in time (Unix timestamp) when the gift was send for the last time; for sold out gifts only
  Gift copyWith({
    int? id,
    Sticker? sticker,
    int? starCount,
    int? defaultSellStarCount,
    int? upgradeStarCount,
    bool? isForBirthday,
    int? remainingCount,
    int? totalCount,
    int? firstSendDate,
    int? lastSendDate,
  }) => Gift(
    id: id ?? this.id,
    sticker: sticker ?? this.sticker,
    starCount: starCount ?? this.starCount,
    defaultSellStarCount: defaultSellStarCount ?? this.defaultSellStarCount,
    upgradeStarCount: upgradeStarCount ?? this.upgradeStarCount,
    isForBirthday: isForBirthday ?? this.isForBirthday,
    remainingCount: remainingCount ?? this.remainingCount,
    totalCount: totalCount ?? this.totalCount,
    firstSendDate: firstSendDate ?? this.firstSendDate,
    lastSendDate: lastSendDate ?? this.lastSendDate,
  );

  /// TDLib object type
  static const String defaultObjectId = 'gift';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
