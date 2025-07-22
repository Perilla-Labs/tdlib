part of '../tdapi.dart';

/// **MessageProperties** *(messageProperties)* - basic class
///
/// Contains properties of a message and describes actions that can be done with the message right now.
///
/// * [canAddTasks]: True, if tasks can be added to the message's checklist using addChecklistTasks if the current user has Telegram Premium subscription.
/// * [canBeCopied]: True, if content of the message can be copied using inputMessageForwarded or forwardMessages with copy options.
/// * [canBeCopiedToSecretChat]: True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options.
/// * [canBeDeletedOnlyForSelf]: True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false.
/// * [canBeDeletedForAllUsers]: True, if the message can be deleted for all users using the method deleteMessages with revoke == true.
/// * [canBeEdited]: True, if the message can be edited using the methods editMessageText, editMessageCaption, or editMessageReplyMarkup.. For live location, poll, and checklist messages this fields shows whether editMessageLiveLocation, stopPoll, or editMessageChecklist respectively can be used with this message.
/// * [canBeForwarded]: True, if the message can be forwarded using inputMessageForwarded or forwardMessages without copy options.
/// * [canBePaid]: True, if the message can be paid using inputInvoiceMessage.
/// * [canBePinned]: True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage.
/// * [canBeReplied]: True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage.
/// * [canBeRepliedInAnotherChat]: True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage.
/// * [canBeSaved]: True, if content of the message can be saved locally.
/// * [canBeSharedInStory]: True, if the message can be shared in a story using inputStoryAreaTypeMessage.
/// * [canEditMedia]: True, if the message can be edited using the method editMessageMedia.
/// * [canEditSchedulingState]: True, if scheduling state of the message can be edited.
/// * [canGetAuthor]: True, if author of the message sent on behalf of a chat can be received through getMessageAuthor.
/// * [canGetEmbeddingCode]: True, if code for message embedding can be received using getMessageEmbeddingCode.
/// * [canGetLink]: True, if a link can be generated for the message using getMessageLink.
/// * [canGetMediaTimestampLinks]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or link preview description using getMessageLink.
/// * [canGetMessageThread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory.
/// * [canGetReadDate]: True, if read date of the message can be received through getMessageReadDate.
/// * [canGetStatistics]: True, if message statistics are available through getMessageStatistics and message forwards can be received using getMessagePublicForwards.
/// * [canGetVideoAdvertisements]: True, if advertisements for video of the message can be received though getVideoMessageAdvertisements.
/// * [canGetViewers]: True, if chat members already viewed the message can be received through getMessageViewers.
/// * [canMarkTasksAsDone]: True, if tasks can be marked as done or not done in the message's checklist using markChecklistTasksAsDone if the current user has Telegram Premium subscription.
/// * [canRecognizeSpeech]: True, if speech can be recognized for the message through recognizeSpeech.
/// * [canReportChat]: True, if the message can be reported using reportChat.
/// * [canReportReactions]: True, if reactions on the message can be reported through reportMessageReactions.
/// * [canReportSupergroupSpam]: True, if the message can be reported using reportSupergroupSpam.
/// * [canSetFactCheck]: True, if fact check for the message can be changed through setMessageFactCheck.
/// * [needShowStatistics]: True, if message statistics must be available from context menu of the message.
final class MessageProperties extends TdObject {
  /// **MessageProperties** *(messageProperties)* - basic class
  ///
  /// Contains properties of a message and describes actions that can be done with the message right now.
  ///
  /// * [canAddTasks]: True, if tasks can be added to the message's checklist using addChecklistTasks if the current user has Telegram Premium subscription.
  /// * [canBeCopied]: True, if content of the message can be copied using inputMessageForwarded or forwardMessages with copy options.
  /// * [canBeCopiedToSecretChat]: True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options.
  /// * [canBeDeletedOnlyForSelf]: True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false.
  /// * [canBeDeletedForAllUsers]: True, if the message can be deleted for all users using the method deleteMessages with revoke == true.
  /// * [canBeEdited]: True, if the message can be edited using the methods editMessageText, editMessageCaption, or editMessageReplyMarkup.. For live location, poll, and checklist messages this fields shows whether editMessageLiveLocation, stopPoll, or editMessageChecklist respectively can be used with this message.
  /// * [canBeForwarded]: True, if the message can be forwarded using inputMessageForwarded or forwardMessages without copy options.
  /// * [canBePaid]: True, if the message can be paid using inputInvoiceMessage.
  /// * [canBePinned]: True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage.
  /// * [canBeReplied]: True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage.
  /// * [canBeRepliedInAnotherChat]: True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage.
  /// * [canBeSaved]: True, if content of the message can be saved locally.
  /// * [canBeSharedInStory]: True, if the message can be shared in a story using inputStoryAreaTypeMessage.
  /// * [canEditMedia]: True, if the message can be edited using the method editMessageMedia.
  /// * [canEditSchedulingState]: True, if scheduling state of the message can be edited.
  /// * [canGetAuthor]: True, if author of the message sent on behalf of a chat can be received through getMessageAuthor.
  /// * [canGetEmbeddingCode]: True, if code for message embedding can be received using getMessageEmbeddingCode.
  /// * [canGetLink]: True, if a link can be generated for the message using getMessageLink.
  /// * [canGetMediaTimestampLinks]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or link preview description using getMessageLink.
  /// * [canGetMessageThread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory.
  /// * [canGetReadDate]: True, if read date of the message can be received through getMessageReadDate.
  /// * [canGetStatistics]: True, if message statistics are available through getMessageStatistics and message forwards can be received using getMessagePublicForwards.
  /// * [canGetVideoAdvertisements]: True, if advertisements for video of the message can be received though getVideoMessageAdvertisements.
  /// * [canGetViewers]: True, if chat members already viewed the message can be received through getMessageViewers.
  /// * [canMarkTasksAsDone]: True, if tasks can be marked as done or not done in the message's checklist using markChecklistTasksAsDone if the current user has Telegram Premium subscription.
  /// * [canRecognizeSpeech]: True, if speech can be recognized for the message through recognizeSpeech.
  /// * [canReportChat]: True, if the message can be reported using reportChat.
  /// * [canReportReactions]: True, if reactions on the message can be reported through reportMessageReactions.
  /// * [canReportSupergroupSpam]: True, if the message can be reported using reportSupergroupSpam.
  /// * [canSetFactCheck]: True, if fact check for the message can be changed through setMessageFactCheck.
  /// * [needShowStatistics]: True, if message statistics must be available from context menu of the message.
  const MessageProperties({
    required this.canAddTasks,
    required this.canBeCopied,
    required this.canBeCopiedToSecretChat,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBePaid,
    required this.canBePinned,
    required this.canBeReplied,
    required this.canBeRepliedInAnotherChat,
    required this.canBeSaved,
    required this.canBeSharedInStory,
    required this.canEditMedia,
    required this.canEditSchedulingState,
    required this.canGetAuthor,
    required this.canGetEmbeddingCode,
    required this.canGetLink,
    required this.canGetMediaTimestampLinks,
    required this.canGetMessageThread,
    required this.canGetReadDate,
    required this.canGetStatistics,
    required this.canGetVideoAdvertisements,
    required this.canGetViewers,
    required this.canMarkTasksAsDone,
    required this.canRecognizeSpeech,
    required this.canReportChat,
    required this.canReportReactions,
    required this.canReportSupergroupSpam,
    required this.canSetFactCheck,
    required this.needShowStatistics,
    this.extra,
    this.clientId,
  });

  /// True, if tasks can be added to the message's checklist using addChecklistTasks if the current user has Telegram Premium subscription
  final bool canAddTasks;

  /// True, if content of the message can be copied using inputMessageForwarded or forwardMessages with copy options
  final bool canBeCopied;

  /// True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options
  final bool canBeCopiedToSecretChat;

  /// True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false
  final bool canBeDeletedOnlyForSelf;

  /// True, if the message can be deleted for all users using the method deleteMessages with revoke == true
  final bool canBeDeletedForAllUsers;

  /// True, if the message can be edited using the methods editMessageText, editMessageCaption, or editMessageReplyMarkup.. For live location, poll, and checklist messages this fields shows whether editMessageLiveLocation, stopPoll, or editMessageChecklist respectively can be used with this message
  final bool canBeEdited;

  /// True, if the message can be forwarded using inputMessageForwarded or forwardMessages without copy options
  final bool canBeForwarded;

  /// True, if the message can be paid using inputInvoiceMessage
  final bool canBePaid;

  /// True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage
  final bool canBePinned;

  /// True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage
  final bool canBeReplied;

  /// True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage
  final bool canBeRepliedInAnotherChat;

  /// True, if content of the message can be saved locally
  final bool canBeSaved;

  /// True, if the message can be shared in a story using inputStoryAreaTypeMessage
  final bool canBeSharedInStory;

  /// True, if the message can be edited using the method editMessageMedia
  final bool canEditMedia;

  /// True, if scheduling state of the message can be edited
  final bool canEditSchedulingState;

  /// True, if author of the message sent on behalf of a chat can be received through getMessageAuthor
  final bool canGetAuthor;

  /// True, if code for message embedding can be received using getMessageEmbeddingCode
  final bool canGetEmbeddingCode;

  /// True, if a link can be generated for the message using getMessageLink
  final bool canGetLink;

  /// True, if media timestamp links can be generated for media timestamp entities in the message text, caption or link preview description using getMessageLink
  final bool canGetMediaTimestampLinks;

  /// True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// True, if read date of the message can be received through getMessageReadDate
  final bool canGetReadDate;

  /// True, if message statistics are available through getMessageStatistics and message forwards can be received using getMessagePublicForwards
  final bool canGetStatistics;

  /// True, if advertisements for video of the message can be received though getVideoMessageAdvertisements
  final bool canGetVideoAdvertisements;

  /// True, if chat members already viewed the message can be received through getMessageViewers
  final bool canGetViewers;

  /// True, if tasks can be marked as done or not done in the message's checklist using markChecklistTasksAsDone if the current user has Telegram Premium subscription
  final bool canMarkTasksAsDone;

  /// True, if speech can be recognized for the message through recognizeSpeech
  final bool canRecognizeSpeech;

  /// True, if the message can be reported using reportChat
  final bool canReportChat;

  /// True, if reactions on the message can be reported through reportMessageReactions
  final bool canReportReactions;

  /// True, if the message can be reported using reportSupergroupSpam
  final bool canReportSupergroupSpam;

  /// True, if fact check for the message can be changed through setMessageFactCheck
  final bool canSetFactCheck;

  /// True, if message statistics must be available from context menu of the message
  final bool needShowStatistics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory MessageProperties.fromJson(Map<String, dynamic> json) =>
      MessageProperties(
        canAddTasks: json['can_add_tasks'],
        canBeCopied: json['can_be_copied'],
        canBeCopiedToSecretChat: json['can_be_copied_to_secret_chat'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canBeEdited: json['can_be_edited'],
        canBeForwarded: json['can_be_forwarded'],
        canBePaid: json['can_be_paid'],
        canBePinned: json['can_be_pinned'],
        canBeReplied: json['can_be_replied'],
        canBeRepliedInAnotherChat: json['can_be_replied_in_another_chat'],
        canBeSaved: json['can_be_saved'],
        canBeSharedInStory: json['can_be_shared_in_story'],
        canEditMedia: json['can_edit_media'],
        canEditSchedulingState: json['can_edit_scheduling_state'],
        canGetAuthor: json['can_get_author'],
        canGetEmbeddingCode: json['can_get_embedding_code'],
        canGetLink: json['can_get_link'],
        canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
        canGetMessageThread: json['can_get_message_thread'],
        canGetReadDate: json['can_get_read_date'],
        canGetStatistics: json['can_get_statistics'],
        canGetVideoAdvertisements: json['can_get_video_advertisements'],
        canGetViewers: json['can_get_viewers'],
        canMarkTasksAsDone: json['can_mark_tasks_as_done'],
        canRecognizeSpeech: json['can_recognize_speech'],
        canReportChat: json['can_report_chat'],
        canReportReactions: json['can_report_reactions'],
        canReportSupergroupSpam: json['can_report_supergroup_spam'],
        canSetFactCheck: json['can_set_fact_check'],
        needShowStatistics: json['need_show_statistics'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "can_add_tasks": canAddTasks,
      "can_be_copied": canBeCopied,
      "can_be_copied_to_secret_chat": canBeCopiedToSecretChat,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_paid": canBePaid,
      "can_be_pinned": canBePinned,
      "can_be_replied": canBeReplied,
      "can_be_replied_in_another_chat": canBeRepliedInAnotherChat,
      "can_be_saved": canBeSaved,
      "can_be_shared_in_story": canBeSharedInStory,
      "can_edit_media": canEditMedia,
      "can_edit_scheduling_state": canEditSchedulingState,
      "can_get_author": canGetAuthor,
      "can_get_embedding_code": canGetEmbeddingCode,
      "can_get_link": canGetLink,
      "can_get_media_timestamp_links": canGetMediaTimestampLinks,
      "can_get_message_thread": canGetMessageThread,
      "can_get_read_date": canGetReadDate,
      "can_get_statistics": canGetStatistics,
      "can_get_video_advertisements": canGetVideoAdvertisements,
      "can_get_viewers": canGetViewers,
      "can_mark_tasks_as_done": canMarkTasksAsDone,
      "can_recognize_speech": canRecognizeSpeech,
      "can_report_chat": canReportChat,
      "can_report_reactions": canReportReactions,
      "can_report_supergroup_spam": canReportSupergroupSpam,
      "can_set_fact_check": canSetFactCheck,
      "need_show_statistics": needShowStatistics,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [can_add_tasks]: True, if tasks can be added to the message's checklist using addChecklistTasks if the current user has Telegram Premium subscription
  /// * [can_be_copied]: True, if content of the message can be copied using inputMessageForwarded or forwardMessages with copy options
  /// * [can_be_copied_to_secret_chat]: True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options
  /// * [can_be_deleted_only_for_self]: True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false
  /// * [can_be_deleted_for_all_users]: True, if the message can be deleted for all users using the method deleteMessages with revoke == true
  /// * [can_be_edited]: True, if the message can be edited using the methods editMessageText, editMessageCaption, or editMessageReplyMarkup.. For live location, poll, and checklist messages this fields shows whether editMessageLiveLocation, stopPoll, or editMessageChecklist respectively can be used with this message
  /// * [can_be_forwarded]: True, if the message can be forwarded using inputMessageForwarded or forwardMessages without copy options
  /// * [can_be_paid]: True, if the message can be paid using inputInvoiceMessage
  /// * [can_be_pinned]: True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage
  /// * [can_be_replied]: True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage
  /// * [can_be_replied_in_another_chat]: True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage
  /// * [can_be_saved]: True, if content of the message can be saved locally
  /// * [can_be_shared_in_story]: True, if the message can be shared in a story using inputStoryAreaTypeMessage
  /// * [can_edit_media]: True, if the message can be edited using the method editMessageMedia
  /// * [can_edit_scheduling_state]: True, if scheduling state of the message can be edited
  /// * [can_get_author]: True, if author of the message sent on behalf of a chat can be received through getMessageAuthor
  /// * [can_get_embedding_code]: True, if code for message embedding can be received using getMessageEmbeddingCode
  /// * [can_get_link]: True, if a link can be generated for the message using getMessageLink
  /// * [can_get_media_timestamp_links]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or link preview description using getMessageLink
  /// * [can_get_message_thread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  /// * [can_get_read_date]: True, if read date of the message can be received through getMessageReadDate
  /// * [can_get_statistics]: True, if message statistics are available through getMessageStatistics and message forwards can be received using getMessagePublicForwards
  /// * [can_get_video_advertisements]: True, if advertisements for video of the message can be received though getVideoMessageAdvertisements
  /// * [can_get_viewers]: True, if chat members already viewed the message can be received through getMessageViewers
  /// * [can_mark_tasks_as_done]: True, if tasks can be marked as done or not done in the message's checklist using markChecklistTasksAsDone if the current user has Telegram Premium subscription
  /// * [can_recognize_speech]: True, if speech can be recognized for the message through recognizeSpeech
  /// * [can_report_chat]: True, if the message can be reported using reportChat
  /// * [can_report_reactions]: True, if reactions on the message can be reported through reportMessageReactions
  /// * [can_report_supergroup_spam]: True, if the message can be reported using reportSupergroupSpam
  /// * [can_set_fact_check]: True, if fact check for the message can be changed through setMessageFactCheck
  /// * [need_show_statistics]: True, if message statistics must be available from context menu of the message
  MessageProperties copyWith({
    bool? canAddTasks,
    bool? canBeCopied,
    bool? canBeCopiedToSecretChat,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBePaid,
    bool? canBePinned,
    bool? canBeReplied,
    bool? canBeRepliedInAnotherChat,
    bool? canBeSaved,
    bool? canBeSharedInStory,
    bool? canEditMedia,
    bool? canEditSchedulingState,
    bool? canGetAuthor,
    bool? canGetEmbeddingCode,
    bool? canGetLink,
    bool? canGetMediaTimestampLinks,
    bool? canGetMessageThread,
    bool? canGetReadDate,
    bool? canGetStatistics,
    bool? canGetVideoAdvertisements,
    bool? canGetViewers,
    bool? canMarkTasksAsDone,
    bool? canRecognizeSpeech,
    bool? canReportChat,
    bool? canReportReactions,
    bool? canReportSupergroupSpam,
    bool? canSetFactCheck,
    bool? needShowStatistics,
    dynamic extra,
    int? clientId,
  }) => MessageProperties(
    canAddTasks: canAddTasks ?? this.canAddTasks,
    canBeCopied: canBeCopied ?? this.canBeCopied,
    canBeCopiedToSecretChat:
        canBeCopiedToSecretChat ?? this.canBeCopiedToSecretChat,
    canBeDeletedOnlyForSelf:
        canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers:
        canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBePaid: canBePaid ?? this.canBePaid,
    canBePinned: canBePinned ?? this.canBePinned,
    canBeReplied: canBeReplied ?? this.canBeReplied,
    canBeRepliedInAnotherChat:
        canBeRepliedInAnotherChat ?? this.canBeRepliedInAnotherChat,
    canBeSaved: canBeSaved ?? this.canBeSaved,
    canBeSharedInStory: canBeSharedInStory ?? this.canBeSharedInStory,
    canEditMedia: canEditMedia ?? this.canEditMedia,
    canEditSchedulingState:
        canEditSchedulingState ?? this.canEditSchedulingState,
    canGetAuthor: canGetAuthor ?? this.canGetAuthor,
    canGetEmbeddingCode: canGetEmbeddingCode ?? this.canGetEmbeddingCode,
    canGetLink: canGetLink ?? this.canGetLink,
    canGetMediaTimestampLinks:
        canGetMediaTimestampLinks ?? this.canGetMediaTimestampLinks,
    canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
    canGetReadDate: canGetReadDate ?? this.canGetReadDate,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetVideoAdvertisements:
        canGetVideoAdvertisements ?? this.canGetVideoAdvertisements,
    canGetViewers: canGetViewers ?? this.canGetViewers,
    canMarkTasksAsDone: canMarkTasksAsDone ?? this.canMarkTasksAsDone,
    canRecognizeSpeech: canRecognizeSpeech ?? this.canRecognizeSpeech,
    canReportChat: canReportChat ?? this.canReportChat,
    canReportReactions: canReportReactions ?? this.canReportReactions,
    canReportSupergroupSpam:
        canReportSupergroupSpam ?? this.canReportSupergroupSpam,
    canSetFactCheck: canSetFactCheck ?? this.canSetFactCheck,
    needShowStatistics: needShowStatistics ?? this.needShowStatistics,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageProperties';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
