part of '../tdapi.dart';

/// **SetOption** *(setOption)* - TDLib function
///
/// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization.
///
/// * [name]: The name of the option.
/// * [value]: The new value of the option; pass null to reset option value to a default value *(optional)*.
///
/// [Ok] is returned on completion.
final class SetOption extends TdFunction {
  /// **SetOption** *(setOption)* - TDLib function
  ///
  /// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization.
  ///
  /// * [name]: The name of the option.
  /// * [value]: The new value of the option; pass null to reset option value to a default value *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetOption({required this.name, this.value});

  /// The name of the option
  final String name;

  /// The new value of the option; pass null to reset option value to a default value
  final OptionValue? value;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "name": name,
      "value": value?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: The name of the option
  /// * [value]: The new value of the option; pass null to reset option value to a default value
  SetOption copyWith({String? name, OptionValue? value}) =>
      SetOption(name: name ?? this.name, value: value ?? this.value);

  /// TDLib object type
  static const String defaultObjectId = 'setOption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
