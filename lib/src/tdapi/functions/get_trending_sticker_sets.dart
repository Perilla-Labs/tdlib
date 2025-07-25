part of '../tdapi.dart';

/// **GetTrendingStickerSets** *(getTrendingStickerSets)* - TDLib function
///
/// Returns a list of trending sticker sets. For optimal performance, the number of returned sticker sets is chosen by TDLib.
///
/// * [stickerType]: Type of the sticker sets to return.
/// * [offset]: The offset from which to return the sticker sets; must be non-negative.
/// * [limit]: The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached.
///
/// [TrendingStickerSets] is returned on completion.
final class GetTrendingStickerSets extends TdFunction {
  /// **GetTrendingStickerSets** *(getTrendingStickerSets)* - TDLib function
  ///
  /// Returns a list of trending sticker sets. For optimal performance, the number of returned sticker sets is chosen by TDLib.
  ///
  /// * [stickerType]: Type of the sticker sets to return.
  /// * [offset]: The offset from which to return the sticker sets; must be non-negative.
  /// * [limit]: The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached.
  ///
  /// [TrendingStickerSets] is returned on completion.
  const GetTrendingStickerSets({
    required this.stickerType,
    required this.offset,
    required this.limit,
  });

  /// Type of the sticker sets to return
  final StickerType stickerType;

  /// The offset from which to return the sticker sets; must be non-negative
  final int offset;

  /// The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached
  final int limit;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "sticker_type": stickerType.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_type]: Type of the sticker sets to return
  /// * [offset]: The offset from which to return the sticker sets; must be non-negative
  /// * [limit]: The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached
  GetTrendingStickerSets copyWith({
    StickerType? stickerType,
    int? offset,
    int? limit,
  }) => GetTrendingStickerSets(
    stickerType: stickerType ?? this.stickerType,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getTrendingStickerSets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
