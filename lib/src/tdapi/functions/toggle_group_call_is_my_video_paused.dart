part of '../tdapi.dart';

/// **ToggleGroupCallIsMyVideoPaused** *(toggleGroupCallIsMyVideoPaused)* - TDLib function
///
/// Toggles whether current user's video is paused.
///
/// * [groupCallId]: Group call identifier.
/// * [isMyVideoPaused]: Pass true if the current user's video is paused.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  /// **ToggleGroupCallIsMyVideoPaused** *(toggleGroupCallIsMyVideoPaused)* - TDLib function
  ///
  /// Toggles whether current user's video is paused.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [isMyVideoPaused]: Pass true if the current user's video is paused.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });

  /// Group call identifier
  final int groupCallId;

  /// Pass true if the current user's video is paused
  final bool isMyVideoPaused;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "group_call_id": groupCallId,
      "is_my_video_paused": isMyVideoPaused,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier
  /// * [is_my_video_paused]: Pass true if the current user's video is paused
  ToggleGroupCallIsMyVideoPaused copyWith({
    int? groupCallId,
    bool? isMyVideoPaused,
  }) => ToggleGroupCallIsMyVideoPaused(
    groupCallId: groupCallId ?? this.groupCallId,
    isMyVideoPaused: isMyVideoPaused ?? this.isMyVideoPaused,
  );

  /// TDLib object type
  static const String defaultObjectId = 'toggleGroupCallIsMyVideoPaused';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
