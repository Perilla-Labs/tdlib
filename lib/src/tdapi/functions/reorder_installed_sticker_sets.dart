part of '../tdapi.dart';

/// **ReorderInstalledStickerSets** *(reorderInstalledStickerSets)* - TDLib function
///
/// Changes the order of installed sticker sets.
///
/// * [stickerType]: Type of the sticker sets to reorder.
/// * [stickerSetIds]: Identifiers of installed sticker sets in the new correct order.
///
/// [Ok] is returned on completion.
final class ReorderInstalledStickerSets extends TdFunction {
  /// **ReorderInstalledStickerSets** *(reorderInstalledStickerSets)* - TDLib function
  ///
  /// Changes the order of installed sticker sets.
  ///
  /// * [stickerType]: Type of the sticker sets to reorder.
  /// * [stickerSetIds]: Identifiers of installed sticker sets in the new correct order.
  ///
  /// [Ok] is returned on completion.
  const ReorderInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
  });

  /// Type of the sticker sets to reorder
  final StickerType stickerType;

  /// Identifiers of installed sticker sets in the new correct order
  final List<int> stickerSetIds;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "sticker_type": stickerType.toJson(),
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_type]: Type of the sticker sets to reorder
  /// * [sticker_set_ids]: Identifiers of installed sticker sets in the new correct order
  ReorderInstalledStickerSets copyWith({
    StickerType? stickerType,
    List<int>? stickerSetIds,
  }) => ReorderInstalledStickerSets(
    stickerType: stickerType ?? this.stickerType,
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
  );

  /// TDLib object type
  static const String defaultObjectId = 'reorderInstalledStickerSets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
