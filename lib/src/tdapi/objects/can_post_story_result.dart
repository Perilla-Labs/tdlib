part of '../tdapi.dart';

/// **CanPostStoryResult** *(canPostStoryResult)* - parent
///
/// Represents result of checking whether the current user can post a story on behalf of the specific chat.
sealed class CanPostStoryResult extends TdObject {
  /// **CanPostStoryResult** *(canPostStoryResult)* - parent
  ///
  /// Represents result of checking whether the current user can post a story on behalf of the specific chat.
  const CanPostStoryResult();

  /// a CanPostStoryResult return type can be :
  /// * [CanPostStoryResultOk]
  /// * [CanPostStoryResultPremiumNeeded]
  /// * [CanPostStoryResultBoostNeeded]
  /// * [CanPostStoryResultActiveStoryLimitExceeded]
  /// * [CanPostStoryResultWeeklyLimitExceeded]
  /// * [CanPostStoryResultMonthlyLimitExceeded]
  factory CanPostStoryResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CanPostStoryResultOk.defaultObjectId:
        return CanPostStoryResultOk.fromJson(json);
      case CanPostStoryResultPremiumNeeded.defaultObjectId:
        return CanPostStoryResultPremiumNeeded.fromJson(json);
      case CanPostStoryResultBoostNeeded.defaultObjectId:
        return CanPostStoryResultBoostNeeded.fromJson(json);
      case CanPostStoryResultActiveStoryLimitExceeded.defaultObjectId:
        return CanPostStoryResultActiveStoryLimitExceeded.fromJson(json);
      case CanPostStoryResultWeeklyLimitExceeded.defaultObjectId:
        return CanPostStoryResultWeeklyLimitExceeded.fromJson(json);
      case CanPostStoryResultMonthlyLimitExceeded.defaultObjectId:
        return CanPostStoryResultMonthlyLimitExceeded.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CanPostStoryResult)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  CanPostStoryResult copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'canPostStoryResult';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanPostStoryResultOk** *(canPostStoryResultOk)* - child of CanPostStoryResult
///
/// A story can be sent.
///
/// * [storyCount]: Number of stories that can be posted by the user.
final class CanPostStoryResultOk extends CanPostStoryResult {
  /// **CanPostStoryResultOk** *(canPostStoryResultOk)* - child of CanPostStoryResult
  ///
  /// A story can be sent.
  ///
  /// * [storyCount]: Number of stories that can be posted by the user.
  const CanPostStoryResultOk({
    required this.storyCount,
    this.extra,
    this.clientId,
  });

  /// Number of stories that can be posted by the user
  final int storyCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanPostStoryResultOk.fromJson(Map<String, dynamic> json) =>
      CanPostStoryResultOk(
        storyCount: json['story_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "story_count": storyCount};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_count]: Number of stories that can be posted by the user
  @override
  CanPostStoryResultOk copyWith({
    int? storyCount,
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultOk(
    storyCount: storyCount ?? this.storyCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'canPostStoryResultOk';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanPostStoryResultPremiumNeeded** *(canPostStoryResultPremiumNeeded)* - child of CanPostStoryResult
///
/// The user must subscribe to Telegram Premium to be able to post stories.
final class CanPostStoryResultPremiumNeeded extends CanPostStoryResult {
  /// **CanPostStoryResultPremiumNeeded** *(canPostStoryResultPremiumNeeded)* - child of CanPostStoryResult
  ///
  /// The user must subscribe to Telegram Premium to be able to post stories.
  const CanPostStoryResultPremiumNeeded({this.extra, this.clientId});

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanPostStoryResultPremiumNeeded.fromJson(Map<String, dynamic> json) =>
      CanPostStoryResultPremiumNeeded(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId};
  }

  /// Copy instance with no modifications.
  @override
  CanPostStoryResultPremiumNeeded copyWith({dynamic extra, int? clientId}) =>
      CanPostStoryResultPremiumNeeded(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canPostStoryResultPremiumNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanPostStoryResultBoostNeeded** *(canPostStoryResultBoostNeeded)* - child of CanPostStoryResult
///
/// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat.
final class CanPostStoryResultBoostNeeded extends CanPostStoryResult {
  /// **CanPostStoryResultBoostNeeded** *(canPostStoryResultBoostNeeded)* - child of CanPostStoryResult
  ///
  /// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat.
  const CanPostStoryResultBoostNeeded({this.extra, this.clientId});

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanPostStoryResultBoostNeeded.fromJson(Map<String, dynamic> json) =>
      CanPostStoryResultBoostNeeded(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId};
  }

  /// Copy instance with no modifications.
  @override
  CanPostStoryResultBoostNeeded copyWith({dynamic extra, int? clientId}) =>
      CanPostStoryResultBoostNeeded(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canPostStoryResultBoostNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanPostStoryResultActiveStoryLimitExceeded** *(canPostStoryResultActiveStoryLimitExceeded)* - child of CanPostStoryResult
///
/// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire.
final class CanPostStoryResultActiveStoryLimitExceeded
    extends CanPostStoryResult {
  /// **CanPostStoryResultActiveStoryLimitExceeded** *(canPostStoryResultActiveStoryLimitExceeded)* - child of CanPostStoryResult
  ///
  /// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire.
  const CanPostStoryResultActiveStoryLimitExceeded({this.extra, this.clientId});

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanPostStoryResultActiveStoryLimitExceeded.fromJson(
    Map<String, dynamic> json,
  ) => CanPostStoryResultActiveStoryLimitExceeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId};
  }

  /// Copy instance with no modifications.
  @override
  CanPostStoryResultActiveStoryLimitExceeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultActiveStoryLimitExceeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId =
      'canPostStoryResultActiveStoryLimitExceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanPostStoryResultWeeklyLimitExceeded** *(canPostStoryResultWeeklyLimitExceeded)* - child of CanPostStoryResult
///
/// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
///
/// * [retryAfter]: Time left before the user can post the next story.
final class CanPostStoryResultWeeklyLimitExceeded extends CanPostStoryResult {
  /// **CanPostStoryResultWeeklyLimitExceeded** *(canPostStoryResultWeeklyLimitExceeded)* - child of CanPostStoryResult
  ///
  /// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
  ///
  /// * [retryAfter]: Time left before the user can post the next story.
  const CanPostStoryResultWeeklyLimitExceeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });

  /// Time left before the user can post the next story
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanPostStoryResultWeeklyLimitExceeded.fromJson(
    Map<String, dynamic> json,
  ) => CanPostStoryResultWeeklyLimitExceeded(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "retry_after": retryAfter};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [retry_after]: Time left before the user can post the next story
  @override
  CanPostStoryResultWeeklyLimitExceeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultWeeklyLimitExceeded(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'canPostStoryResultWeeklyLimitExceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanPostStoryResultMonthlyLimitExceeded** *(canPostStoryResultMonthlyLimitExceeded)* - child of CanPostStoryResult
///
/// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
///
/// * [retryAfter]: Time left before the user can post the next story.
final class CanPostStoryResultMonthlyLimitExceeded extends CanPostStoryResult {
  /// **CanPostStoryResultMonthlyLimitExceeded** *(canPostStoryResultMonthlyLimitExceeded)* - child of CanPostStoryResult
  ///
  /// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
  ///
  /// * [retryAfter]: Time left before the user can post the next story.
  const CanPostStoryResultMonthlyLimitExceeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });

  /// Time left before the user can post the next story
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanPostStoryResultMonthlyLimitExceeded.fromJson(
    Map<String, dynamic> json,
  ) => CanPostStoryResultMonthlyLimitExceeded(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "retry_after": retryAfter};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [retry_after]: Time left before the user can post the next story
  @override
  CanPostStoryResultMonthlyLimitExceeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanPostStoryResultMonthlyLimitExceeded(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId =
      'canPostStoryResultMonthlyLimitExceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
