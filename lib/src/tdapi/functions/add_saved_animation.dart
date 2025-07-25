part of '../tdapi.dart';

/// **AddSavedAnimation** *(addSavedAnimation)* - TDLib function
///
/// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first.. Only non-secret video animations with MIME type "video/mp4" can be added to the list.
///
/// * [animation]: The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list.
///
/// [Ok] is returned on completion.
final class AddSavedAnimation extends TdFunction {
  /// **AddSavedAnimation** *(addSavedAnimation)* - TDLib function
  ///
  /// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first.. Only non-secret video animations with MIME type "video/mp4" can be added to the list.
  ///
  /// * [animation]: The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list.
  ///
  /// [Ok] is returned on completion.
  const AddSavedAnimation({required this.animation});

  /// The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
  final InputFile animation;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "animation": animation.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [animation]: The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
  AddSavedAnimation copyWith({InputFile? animation}) =>
      AddSavedAnimation(animation: animation ?? this.animation);

  /// TDLib object type
  static const String defaultObjectId = 'addSavedAnimation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
