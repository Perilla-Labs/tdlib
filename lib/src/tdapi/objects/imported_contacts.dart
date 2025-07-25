part of '../tdapi.dart';

/// **ImportedContacts** *(importedContacts)* - basic class
///
/// Represents the result of an importContacts request.
///
/// * [userIds]: User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user.
/// * [importerCount]: The number of users that imported the corresponding contact; 0 for already registered users or if unavailable.
final class ImportedContacts extends TdObject {
  /// **ImportedContacts** *(importedContacts)* - basic class
  ///
  /// Represents the result of an importContacts request.
  ///
  /// * [userIds]: User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user.
  /// * [importerCount]: The number of users that imported the corresponding contact; 0 for already registered users or if unavailable.
  const ImportedContacts({
    required this.userIds,
    required this.importerCount,
    this.extra,
    this.clientId,
  });

  /// User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user
  final List<int> userIds;

  /// The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  final List<int> importerCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ImportedContacts.fromJson(Map<String, dynamic> json) =>
      ImportedContacts(
        userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item).toList(),
        ),
        importerCount: List<int>.from(
          (json['importer_count'] ?? []).map((item) => item).toList(),
        ),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_ids": userIds.map((i) => i).toList(),
      "importer_count": importerCount.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_ids]: User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user
  /// * [importer_count]: The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  ImportedContacts copyWith({
    List<int>? userIds,
    List<int>? importerCount,
    dynamic extra,
    int? clientId,
  }) => ImportedContacts(
    userIds: userIds ?? this.userIds,
    importerCount: importerCount ?? this.importerCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'importedContacts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
