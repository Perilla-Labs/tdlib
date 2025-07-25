part of '../tdapi.dart';

/// **SearchInstalledStickerSets** *(searchInstalledStickerSets)* - TDLib function
///
/// Searches for installed sticker sets by looking for specified query in their title and name.
///
/// * [stickerType]: Type of the sticker sets to search for.
/// * [query]: Query to search for.
/// * [limit]: The maximum number of sticker sets to return.
///
/// [StickerSets] is returned on completion.
final class SearchInstalledStickerSets extends TdFunction {
  /// **SearchInstalledStickerSets** *(searchInstalledStickerSets)* - TDLib function
  ///
  /// Searches for installed sticker sets by looking for specified query in their title and name.
  ///
  /// * [stickerType]: Type of the sticker sets to search for.
  /// * [query]: Query to search for.
  /// * [limit]: The maximum number of sticker sets to return.
  ///
  /// [StickerSets] is returned on completion.
  const SearchInstalledStickerSets({
    required this.stickerType,
    required this.query,
    required this.limit,
  });

  /// Type of the sticker sets to search for
  final StickerType stickerType;

  /// Query to search for
  final String query;

  /// The maximum number of sticker sets to return
  final int limit;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "sticker_type": stickerType.toJson(),
      "query": query,
      "limit": limit,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_type]: Type of the sticker sets to search for
  /// * [query]: Query to search for
  /// * [limit]: The maximum number of sticker sets to return
  SearchInstalledStickerSets copyWith({
    StickerType? stickerType,
    String? query,
    int? limit,
  }) => SearchInstalledStickerSets(
    stickerType: stickerType ?? this.stickerType,
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String defaultObjectId = 'searchInstalledStickerSets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
