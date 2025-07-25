part of '../tdapi.dart';

/// **PersonalDetails** *(personalDetails)* - basic class
///
/// Contains the user's personal details.
///
/// * [firstName]: First name of the user written in English; 1-255 characters.
/// * [middleName]: Middle name of the user written in English; 0-255 characters.
/// * [lastName]: Last name of the user written in English; 1-255 characters.
/// * [nativeFirstName]: Native first name of the user; 1-255 characters.
/// * [nativeMiddleName]: Native middle name of the user; 0-255 characters.
/// * [nativeLastName]: Native last name of the user; 1-255 characters.
/// * [birthdate]: Birthdate of the user.
/// * [gender]: Gender of the user, "male" or "female".
/// * [countryCode]: A two-letter ISO 3166-1 alpha-2 country code of the user's country.
/// * [residenceCountryCode]: A two-letter ISO 3166-1 alpha-2 country code of the user's residence country.
final class PersonalDetails extends TdObject {
  /// **PersonalDetails** *(personalDetails)* - basic class
  ///
  /// Contains the user's personal details.
  ///
  /// * [firstName]: First name of the user written in English; 1-255 characters.
  /// * [middleName]: Middle name of the user written in English; 0-255 characters.
  /// * [lastName]: Last name of the user written in English; 1-255 characters.
  /// * [nativeFirstName]: Native first name of the user; 1-255 characters.
  /// * [nativeMiddleName]: Native middle name of the user; 0-255 characters.
  /// * [nativeLastName]: Native last name of the user; 1-255 characters.
  /// * [birthdate]: Birthdate of the user.
  /// * [gender]: Gender of the user, "male" or "female".
  /// * [countryCode]: A two-letter ISO 3166-1 alpha-2 country code of the user's country.
  /// * [residenceCountryCode]: A two-letter ISO 3166-1 alpha-2 country code of the user's residence country.
  const PersonalDetails({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.nativeFirstName,
    required this.nativeMiddleName,
    required this.nativeLastName,
    required this.birthdate,
    required this.gender,
    required this.countryCode,
    required this.residenceCountryCode,
  });

  /// First name of the user written in English; 1-255 characters
  final String firstName;

  /// Middle name of the user written in English; 0-255 characters
  final String middleName;

  /// Last name of the user written in English; 1-255 characters
  final String lastName;

  /// Native first name of the user; 1-255 characters
  final String nativeFirstName;

  /// Native middle name of the user; 0-255 characters
  final String nativeMiddleName;

  /// Native last name of the user; 1-255 characters
  final String nativeLastName;

  /// Birthdate of the user
  final Date birthdate;

  /// Gender of the user, "male" or "female"
  final String gender;

  /// A two-letter ISO 3166-1 alpha-2 country code of the user's country
  final String countryCode;

  /// A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
  final String residenceCountryCode;

  /// Parse from a json
  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      PersonalDetails(
        firstName: json['first_name'],
        middleName: json['middle_name'],
        lastName: json['last_name'],
        nativeFirstName: json['native_first_name'],
        nativeMiddleName: json['native_middle_name'],
        nativeLastName: json['native_last_name'],
        birthdate: Date.fromJson(json['birthdate']),
        gender: json['gender'],
        countryCode: json['country_code'],
        residenceCountryCode: json['residence_country_code'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "first_name": firstName,
      "middle_name": middleName,
      "last_name": lastName,
      "native_first_name": nativeFirstName,
      "native_middle_name": nativeMiddleName,
      "native_last_name": nativeLastName,
      "birthdate": birthdate.toJson(),
      "gender": gender,
      "country_code": countryCode,
      "residence_country_code": residenceCountryCode,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [first_name]: First name of the user written in English; 1-255 characters
  /// * [middle_name]: Middle name of the user written in English; 0-255 characters
  /// * [last_name]: Last name of the user written in English; 1-255 characters
  /// * [native_first_name]: Native first name of the user; 1-255 characters
  /// * [native_middle_name]: Native middle name of the user; 0-255 characters
  /// * [native_last_name]: Native last name of the user; 1-255 characters
  /// * [birthdate]: Birthdate of the user
  /// * [gender]: Gender of the user, "male" or "female"
  /// * [country_code]: A two-letter ISO 3166-1 alpha-2 country code of the user's country
  /// * [residence_country_code]: A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
  PersonalDetails copyWith({
    String? firstName,
    String? middleName,
    String? lastName,
    String? nativeFirstName,
    String? nativeMiddleName,
    String? nativeLastName,
    Date? birthdate,
    String? gender,
    String? countryCode,
    String? residenceCountryCode,
  }) => PersonalDetails(
    firstName: firstName ?? this.firstName,
    middleName: middleName ?? this.middleName,
    lastName: lastName ?? this.lastName,
    nativeFirstName: nativeFirstName ?? this.nativeFirstName,
    nativeMiddleName: nativeMiddleName ?? this.nativeMiddleName,
    nativeLastName: nativeLastName ?? this.nativeLastName,
    birthdate: birthdate ?? this.birthdate,
    gender: gender ?? this.gender,
    countryCode: countryCode ?? this.countryCode,
    residenceCountryCode: residenceCountryCode ?? this.residenceCountryCode,
  );

  /// TDLib object type
  static const String defaultObjectId = 'personalDetails';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
