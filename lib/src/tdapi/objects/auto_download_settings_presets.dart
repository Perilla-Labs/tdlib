part of '../tdapi.dart';

/// **AutoDownloadSettingsPresets** *(autoDownloadSettingsPresets)* - basic class
///
/// Contains auto-download settings presets for the current user.
///
/// * [low]: Preset with lowest settings; expected to be used by default when roaming.
/// * [medium]: Preset with medium settings; expected to be used by default when using mobile data.
/// * [high]: Preset with highest settings; expected to be used by default when connected on Wi-Fi.
final class AutoDownloadSettingsPresets extends TdObject {
  /// **AutoDownloadSettingsPresets** *(autoDownloadSettingsPresets)* - basic class
  ///
  /// Contains auto-download settings presets for the current user.
  ///
  /// * [low]: Preset with lowest settings; expected to be used by default when roaming.
  /// * [medium]: Preset with medium settings; expected to be used by default when using mobile data.
  /// * [high]: Preset with highest settings; expected to be used by default when connected on Wi-Fi.
  const AutoDownloadSettingsPresets({
    required this.low,
    required this.medium,
    required this.high,
    this.extra,
    this.clientId,
  });

  /// Preset with lowest settings; expected to be used by default when roaming
  final AutoDownloadSettings low;

  /// Preset with medium settings; expected to be used by default when using mobile data
  final AutoDownloadSettings medium;

  /// Preset with highest settings; expected to be used by default when connected on Wi-Fi
  final AutoDownloadSettings high;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) =>
      AutoDownloadSettingsPresets(
        low: AutoDownloadSettings.fromJson(json['low']),
        medium: AutoDownloadSettings.fromJson(json['medium']),
        high: AutoDownloadSettings.fromJson(json['high']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "low": low.toJson(),
      "medium": medium.toJson(),
      "high": high.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [low]: Preset with lowest settings; expected to be used by default when roaming
  /// * [medium]: Preset with medium settings; expected to be used by default when using mobile data
  /// * [high]: Preset with highest settings; expected to be used by default when connected on Wi-Fi
  AutoDownloadSettingsPresets copyWith({
    AutoDownloadSettings? low,
    AutoDownloadSettings? medium,
    AutoDownloadSettings? high,
    dynamic extra,
    int? clientId,
  }) => AutoDownloadSettingsPresets(
    low: low ?? this.low,
    medium: medium ?? this.medium,
    high: high ?? this.high,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'autoDownloadSettingsPresets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
