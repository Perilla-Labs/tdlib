part of '../tdapi.dart';

/// **Sessions** *(sessions)* - basic class
///
/// Contains a list of sessions.
///
/// * [sessions]: List of sessions.
/// * [inactiveSessionTtlDays]: Number of days of inactivity before sessions will automatically be terminated; 1-366 days.
final class Sessions extends TdObject {
  /// **Sessions** *(sessions)* - basic class
  ///
  /// Contains a list of sessions.
  ///
  /// * [sessions]: List of sessions.
  /// * [inactiveSessionTtlDays]: Number of days of inactivity before sessions will automatically be terminated; 1-366 days.
  const Sessions({
    required this.sessions,
    required this.inactiveSessionTtlDays,
    this.extra,
    this.clientId,
  });

  /// List of sessions
  final List<Session> sessions;

  /// Number of days of inactivity before sessions will automatically be terminated; 1-366 days
  final int inactiveSessionTtlDays;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory Sessions.fromJson(Map<String, dynamic> json) => Sessions(
    sessions: List<Session>.from(
      (json['sessions'] ?? []).map((item) => Session.fromJson(item)).toList(),
    ),
    inactiveSessionTtlDays: json['inactive_session_ttl_days'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sessions": sessions.map((i) => i.toJson()).toList(),
      "inactive_session_ttl_days": inactiveSessionTtlDays,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sessions]: List of sessions
  /// * [inactive_session_ttl_days]: Number of days of inactivity before sessions will automatically be terminated; 1-366 days
  Sessions copyWith({
    List<Session>? sessions,
    int? inactiveSessionTtlDays,
    dynamic extra,
    int? clientId,
  }) => Sessions(
    sessions: sessions ?? this.sessions,
    inactiveSessionTtlDays:
        inactiveSessionTtlDays ?? this.inactiveSessionTtlDays,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'sessions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
