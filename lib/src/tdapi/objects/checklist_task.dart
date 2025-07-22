part of '../tdapi.dart';

/// **ChecklistTask** *(checklistTask)* - basic class
///
/// Describes a task in a checklist.
///
/// * [id]: Unique identifier of the task.
/// * [text]: Text of the task; may contain only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Url, EmailAddress, Mention, Hashtag, Cashtag and PhoneNumber entities.
/// * [completedByUserId]: Identifier of the user that completed the task; 0 if the task isn't completed.
/// * [completionDate]: Point in time (Unix timestamp) when the task was completed; 0 if the task isn't completed.
final class ChecklistTask extends TdObject {
  /// **ChecklistTask** *(checklistTask)* - basic class
  ///
  /// Describes a task in a checklist.
  ///
  /// * [id]: Unique identifier of the task.
  /// * [text]: Text of the task; may contain only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Url, EmailAddress, Mention, Hashtag, Cashtag and PhoneNumber entities.
  /// * [completedByUserId]: Identifier of the user that completed the task; 0 if the task isn't completed.
  /// * [completionDate]: Point in time (Unix timestamp) when the task was completed; 0 if the task isn't completed.
  const ChecklistTask({
    required this.id,
    required this.text,
    required this.completedByUserId,
    required this.completionDate,
  });

  /// Unique identifier of the task
  final int id;

  /// Text of the task; may contain only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Url, EmailAddress, Mention, Hashtag, Cashtag and PhoneNumber entities
  final FormattedText text;

  /// Identifier of the user that completed the task; 0 if the task isn't completed
  final int completedByUserId;

  /// Point in time (Unix timestamp) when the task was completed; 0 if the task isn't completed
  final int completionDate;

  /// Parse from a json
  factory ChecklistTask.fromJson(Map<String, dynamic> json) => ChecklistTask(
    id: json['id'],
    text: FormattedText.fromJson(json['text']),
    completedByUserId: json['completed_by_user_id'],
    completionDate: json['completion_date'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "text": text.toJson(),
      "completed_by_user_id": completedByUserId,
      "completion_date": completionDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the task
  /// * [text]: Text of the task; may contain only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Url, EmailAddress, Mention, Hashtag, Cashtag and PhoneNumber entities
  /// * [completed_by_user_id]: Identifier of the user that completed the task; 0 if the task isn't completed
  /// * [completion_date]: Point in time (Unix timestamp) when the task was completed; 0 if the task isn't completed
  ChecklistTask copyWith({
    int? id,
    FormattedText? text,
    int? completedByUserId,
    int? completionDate,
  }) => ChecklistTask(
    id: id ?? this.id,
    text: text ?? this.text,
    completedByUserId: completedByUserId ?? this.completedByUserId,
    completionDate: completionDate ?? this.completionDate,
  );

  /// TDLib object type
  static const String defaultObjectId = 'checklistTask';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
