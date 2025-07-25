part of '../tdapi.dart';

/// **Users** *(users)* - basic class
///
/// Represents a list of users.
///
/// * [totalCount]: Approximate total number of users found.
/// * [userIds]: A list of user identifiers.
final class Users extends TdObject {
  /// **Users** *(users)* - basic class
  ///
  /// Represents a list of users.
  ///
  /// * [totalCount]: Approximate total number of users found.
  /// * [userIds]: A list of user identifiers.
  const Users({
    required this.totalCount,
    required this.userIds,
    this.extra,
    this.clientId,
  });

  /// Approximate total number of users found
  final int totalCount;

  /// A list of user identifiers
  final List<int> userIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory Users.fromJson(Map<String, dynamic> json) => Users(
    totalCount: json['total_count'],
    userIds: List<int>.from(
      (json['user_ids'] ?? []).map((item) => item).toList(),
    ),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "total_count": totalCount,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_count]: Approximate total number of users found
  /// * [user_ids]: A list of user identifiers
  Users copyWith({
    int? totalCount,
    List<int>? userIds,
    dynamic extra,
    int? clientId,
  }) => Users(
    totalCount: totalCount ?? this.totalCount,
    userIds: userIds ?? this.userIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'users';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
