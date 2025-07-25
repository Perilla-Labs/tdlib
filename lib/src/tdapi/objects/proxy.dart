part of '../tdapi.dart';

/// **Proxy** *(proxy)* - basic class
///
/// Contains information about a proxy server.
///
/// * [id]: Unique identifier of the proxy.
/// * [server]: Proxy server domain or IP address.
/// * [port]: Proxy server port.
/// * [lastUsedDate]: Point in time (Unix timestamp) when the proxy was last used; 0 if never.
/// * [isEnabled]: True, if the proxy is enabled now.
/// * [type]: Type of the proxy.
final class Proxy extends TdObject {
  /// **Proxy** *(proxy)* - basic class
  ///
  /// Contains information about a proxy server.
  ///
  /// * [id]: Unique identifier of the proxy.
  /// * [server]: Proxy server domain or IP address.
  /// * [port]: Proxy server port.
  /// * [lastUsedDate]: Point in time (Unix timestamp) when the proxy was last used; 0 if never.
  /// * [isEnabled]: True, if the proxy is enabled now.
  /// * [type]: Type of the proxy.
  const Proxy({
    required this.id,
    required this.server,
    required this.port,
    required this.lastUsedDate,
    required this.isEnabled,
    required this.type,
    this.extra,
    this.clientId,
  });

  /// Unique identifier of the proxy
  final int id;

  /// Proxy server domain or IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Point in time (Unix timestamp) when the proxy was last used; 0 if never
  final int lastUsedDate;

  /// True, if the proxy is enabled now
  final bool isEnabled;

  /// Type of the proxy
  final ProxyType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory Proxy.fromJson(Map<String, dynamic> json) => Proxy(
    id: json['id'],
    server: json['server'],
    port: json['port'],
    lastUsedDate: json['last_used_date'],
    isEnabled: json['is_enabled'],
    type: ProxyType.fromJson(json['type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "server": server,
      "port": port,
      "last_used_date": lastUsedDate,
      "is_enabled": isEnabled,
      "type": type.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the proxy
  /// * [server]: Proxy server domain or IP address
  /// * [port]: Proxy server port
  /// * [last_used_date]: Point in time (Unix timestamp) when the proxy was last used; 0 if never
  /// * [is_enabled]: True, if the proxy is enabled now
  /// * [type]: Type of the proxy
  Proxy copyWith({
    int? id,
    String? server,
    int? port,
    int? lastUsedDate,
    bool? isEnabled,
    ProxyType? type,
    dynamic extra,
    int? clientId,
  }) => Proxy(
    id: id ?? this.id,
    server: server ?? this.server,
    port: port ?? this.port,
    lastUsedDate: lastUsedDate ?? this.lastUsedDate,
    isEnabled: isEnabled ?? this.isEnabled,
    type: type ?? this.type,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'proxy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
