part of '../tdapi.dart';

/// **NotificationSounds** *(notificationSounds)* - basic class
///
/// Contains a list of notification sounds.
///
/// * [notificationSounds]: A list of notification sounds.
final class NotificationSounds extends TdObject {
  /// **NotificationSounds** *(notificationSounds)* - basic class
  ///
  /// Contains a list of notification sounds.
  ///
  /// * [notificationSounds]: A list of notification sounds.
  const NotificationSounds({
    required this.notificationSounds,
    this.extra,
    this.clientId,
  });

  /// A list of notification sounds
  final List<NotificationSound> notificationSounds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory NotificationSounds.fromJson(Map<String, dynamic> json) =>
      NotificationSounds(
        notificationSounds: List<NotificationSound>.from(
          (json['notification_sounds'] ?? [])
              .map((item) => NotificationSound.fromJson(item))
              .toList(),
        ),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "notification_sounds": notificationSounds.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [notification_sounds]: A list of notification sounds
  NotificationSounds copyWith({
    List<NotificationSound>? notificationSounds,
    dynamic extra,
    int? clientId,
  }) => NotificationSounds(
    notificationSounds: notificationSounds ?? this.notificationSounds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'notificationSounds';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
