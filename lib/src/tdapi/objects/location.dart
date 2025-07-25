part of '../tdapi.dart';

/// **Location** *(location)* - basic class
///
/// Describes a location on planet Earth.
///
/// * [latitude]: Latitude of the location in degrees; as defined by the sender.
/// * [longitude]: Longitude of the location, in degrees; as defined by the sender.
/// * [horizontalAccuracy]: The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown.
final class Location extends TdObject {
  /// **Location** *(location)* - basic class
  ///
  /// Describes a location on planet Earth.
  ///
  /// * [latitude]: Latitude of the location in degrees; as defined by the sender.
  /// * [longitude]: Longitude of the location, in degrees; as defined by the sender.
  /// * [horizontalAccuracy]: The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown.
  const Location({
    required this.latitude,
    required this.longitude,
    required this.horizontalAccuracy,
  });

  /// Latitude of the location in degrees; as defined by the sender
  final double latitude;

  /// Longitude of the location, in degrees; as defined by the sender
  final double longitude;

  /// The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
  final double horizontalAccuracy;

  /// Parse from a json
  factory Location.fromJson(Map<String, dynamic> json) => Location(
    latitude: json['latitude'],
    longitude: json['longitude'],
    horizontalAccuracy: json['horizontal_accuracy'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "latitude": latitude,
      "longitude": longitude,
      "horizontal_accuracy": horizontalAccuracy,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [latitude]: Latitude of the location in degrees; as defined by the sender
  /// * [longitude]: Longitude of the location, in degrees; as defined by the sender
  /// * [horizontal_accuracy]: The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
  Location copyWith({
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
  }) => Location(
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    horizontalAccuracy: horizontalAccuracy ?? this.horizontalAccuracy,
  );

  /// TDLib object type
  static const String defaultObjectId = 'location';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
