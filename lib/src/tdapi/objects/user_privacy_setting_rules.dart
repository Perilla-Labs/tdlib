part of '../tdapi.dart';

/// **UserPrivacySettingRules** *(userPrivacySettingRules)* - basic class
///
/// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed.
///
/// * [rules]: A list of rules.
final class UserPrivacySettingRules extends TdObject {
  /// **UserPrivacySettingRules** *(userPrivacySettingRules)* - basic class
  ///
  /// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed.
  ///
  /// * [rules]: A list of rules.
  const UserPrivacySettingRules({
    required this.rules,
    this.extra,
    this.clientId,
  });

  /// A list of rules
  final List<UserPrivacySettingRule> rules;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UserPrivacySettingRules.fromJson(Map<String, dynamic> json) =>
      UserPrivacySettingRules(
        rules: List<UserPrivacySettingRule>.from(
          (json['rules'] ?? [])
              .map((item) => UserPrivacySettingRule.fromJson(item))
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
      "rules": rules.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [rules]: A list of rules
  UserPrivacySettingRules copyWith({
    List<UserPrivacySettingRule>? rules,
    dynamic extra,
    int? clientId,
  }) => UserPrivacySettingRules(
    rules: rules ?? this.rules,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'userPrivacySettingRules';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
