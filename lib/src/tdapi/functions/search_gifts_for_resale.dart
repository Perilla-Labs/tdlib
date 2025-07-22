part of '../tdapi.dart';

/// **SearchGiftsForResale** *(searchGiftsForResale)* - TDLib function
///
/// Returns upgraded gifts that can be bought from other owners.
///
/// * [giftId]: Identifier of the regular gift that was upgraded to a unique gift.
/// * [order]: Order in which the results will be sorted.
/// * [attributes]: Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed.. If none attributes of specific type are specified, then all values for this attribute type are allowed.
/// * [offset]: Offset of the first entry to return as received from the previous request with the same order and attributes; use empty string to get the first chunk of results.
/// * [limit]: The maximum number of gifts to return.
///
/// [GiftsForResale] is returned on completion.
final class SearchGiftsForResale extends TdFunction {
  /// **SearchGiftsForResale** *(searchGiftsForResale)* - TDLib function
  ///
  /// Returns upgraded gifts that can be bought from other owners.
  ///
  /// * [giftId]: Identifier of the regular gift that was upgraded to a unique gift.
  /// * [order]: Order in which the results will be sorted.
  /// * [attributes]: Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed.. If none attributes of specific type are specified, then all values for this attribute type are allowed.
  /// * [offset]: Offset of the first entry to return as received from the previous request with the same order and attributes; use empty string to get the first chunk of results.
  /// * [limit]: The maximum number of gifts to return.
  ///
  /// [GiftsForResale] is returned on completion.
  const SearchGiftsForResale({
    required this.giftId,
    required this.order,
    required this.attributes,
    required this.offset,
    required this.limit,
  });

  /// Identifier of the regular gift that was upgraded to a unique gift
  final int giftId;

  /// Order in which the results will be sorted
  final GiftForResaleOrder order;

  /// Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed.. If none attributes of specific type are specified, then all values for this attribute type are allowed
  final List<UpgradedGiftAttributeId> attributes;

  /// Offset of the first entry to return as received from the previous request with the same order and attributes; use empty string to get the first chunk of results
  final String offset;

  /// The maximum number of gifts to return
  final int limit;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "gift_id": giftId,
      "order": order.toJson(),
      "attributes": attributes.map((i) => i.toJson()).toList(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [gift_id]: Identifier of the regular gift that was upgraded to a unique gift
  /// * [order]: Order in which the results will be sorted
  /// * [attributes]: Attributes used to filter received gifts. If multiple attributes of the same type are specified, then all of them are allowed.. If none attributes of specific type are specified, then all values for this attribute type are allowed
  /// * [offset]: Offset of the first entry to return as received from the previous request with the same order and attributes; use empty string to get the first chunk of results
  /// * [limit]: The maximum number of gifts to return
  SearchGiftsForResale copyWith({
    int? giftId,
    GiftForResaleOrder? order,
    List<UpgradedGiftAttributeId>? attributes,
    String? offset,
    int? limit,
  }) => SearchGiftsForResale(
    giftId: giftId ?? this.giftId,
    order: order ?? this.order,
    attributes: attributes ?? this.attributes,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String defaultObjectId = 'searchGiftsForResale';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
