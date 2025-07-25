part of '../tdapi.dart';

/// **InputMessageContent** *(inputMessageContent)* - parent
///
/// The content of a message to send.
sealed class InputMessageContent extends TdObject {
  /// **InputMessageContent** *(inputMessageContent)* - parent
  ///
  /// The content of a message to send.
  const InputMessageContent();

  /// a InputMessageContent return type can be :
  /// * [InputMessageText]
  /// * [InputMessageAnimation]
  /// * [InputMessageAudio]
  /// * [InputMessageDocument]
  /// * [InputMessagePaidMedia]
  /// * [InputMessagePhoto]
  /// * [InputMessageSticker]
  /// * [InputMessageVideo]
  /// * [InputMessageVideoNote]
  /// * [InputMessageVoiceNote]
  /// * [InputMessageLocation]
  /// * [InputMessageVenue]
  /// * [InputMessageContact]
  /// * [InputMessageDice]
  /// * [InputMessageGame]
  /// * [InputMessageInvoice]
  /// * [InputMessagePoll]
  /// * [InputMessageStory]
  /// * [InputMessageChecklist]
  /// * [InputMessageForwarded]
  factory InputMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputMessageText.defaultObjectId:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.defaultObjectId:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.defaultObjectId:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.defaultObjectId:
        return InputMessageDocument.fromJson(json);
      case InputMessagePaidMedia.defaultObjectId:
        return InputMessagePaidMedia.fromJson(json);
      case InputMessagePhoto.defaultObjectId:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.defaultObjectId:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.defaultObjectId:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.defaultObjectId:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.defaultObjectId:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.defaultObjectId:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.defaultObjectId:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.defaultObjectId:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.defaultObjectId:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.defaultObjectId:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.defaultObjectId:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.defaultObjectId:
        return InputMessagePoll.fromJson(json);
      case InputMessageStory.defaultObjectId:
        return InputMessageStory.fromJson(json);
      case InputMessageChecklist.defaultObjectId:
        return InputMessageChecklist.fromJson(json);
      case InputMessageForwarded.defaultObjectId:
        return InputMessageForwarded.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputMessageContent)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  InputMessageContent copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageContent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageText** *(inputMessageText)* - child of InputMessageContent
///
/// A text message.
///
/// * [text]: Formatted text to be sent; 0-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote,. Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually.
/// * [linkPreviewOptions]: Options to be used for generation of a link preview; may be null if none; pass null to use default link preview options *(optional)*.
/// * [clearDraft]: True, if a chat message draft must be deleted.
final class InputMessageText extends InputMessageContent {
  /// **InputMessageText** *(inputMessageText)* - child of InputMessageContent
  ///
  /// A text message.
  ///
  /// * [text]: Formatted text to be sent; 0-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote,. Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually.
  /// * [linkPreviewOptions]: Options to be used for generation of a link preview; may be null if none; pass null to use default link preview options *(optional)*.
  /// * [clearDraft]: True, if a chat message draft must be deleted.
  const InputMessageText({
    required this.text,
    this.linkPreviewOptions,
    required this.clearDraft,
  });

  /// Formatted text to be sent; 0-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote,. Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  final FormattedText text;

  /// Options to be used for generation of a link preview; may be null if none; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  /// True, if a chat message draft must be deleted
  final bool clearDraft;

  /// Parse from a json
  factory InputMessageText.fromJson(Map<String, dynamic> json) =>
      InputMessageText(
        text: FormattedText.fromJson(json['text']),
        linkPreviewOptions: json['link_preview_options'] == null
            ? null
            : LinkPreviewOptions.fromJson(json['link_preview_options']),
        clearDraft: json['clear_draft'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "link_preview_options": linkPreviewOptions?.toJson(),
      "clear_draft": clearDraft,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Formatted text to be sent; 0-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote,. Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  /// * [link_preview_options]: Options to be used for generation of a link preview; may be null if none; pass null to use default link preview options
  /// * [clear_draft]: True, if a chat message draft must be deleted
  @override
  InputMessageText copyWith({
    FormattedText? text,
    LinkPreviewOptions? linkPreviewOptions,
    bool? clearDraft,
  }) => InputMessageText(
    text: text ?? this.text,
    linkPreviewOptions: linkPreviewOptions ?? this.linkPreviewOptions,
    clearDraft: clearDraft ?? this.clearDraft,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageText';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageAnimation** *(inputMessageAnimation)* - child of InputMessageContent
///
/// An animation message (GIF-style).
///
/// * [animation]: Animation file to be sent.
/// * [thumbnail]: Animation thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [addedStickerFileIds]: File identifiers of the stickers added to the animation, if applicable.
/// * [duration]: Duration of the animation, in seconds.
/// * [width]: Width of the animation; may be replaced by the server.
/// * [height]: Height of the animation; may be replaced by the server.
/// * [caption]: Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [showCaptionAboveMedia]: True, if the caption must be shown above the animation; otherwise, the caption must be shown below the animation; not supported in secret chats.
/// * [hasSpoiler]: True, if the animation preview must be covered by a spoiler animation; not supported in secret chats.
final class InputMessageAnimation extends InputMessageContent {
  /// **InputMessageAnimation** *(inputMessageAnimation)* - child of InputMessageContent
  ///
  /// An animation message (GIF-style).
  ///
  /// * [animation]: Animation file to be sent.
  /// * [thumbnail]: Animation thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [addedStickerFileIds]: File identifiers of the stickers added to the animation, if applicable.
  /// * [duration]: Duration of the animation, in seconds.
  /// * [width]: Width of the animation; may be replaced by the server.
  /// * [height]: Height of the animation; may be replaced by the server.
  /// * [caption]: Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [showCaptionAboveMedia]: True, if the caption must be shown above the animation; otherwise, the caption must be shown below the animation; not supported in secret chats.
  /// * [hasSpoiler]: True, if the animation preview must be covered by a spoiler animation; not supported in secret chats.
  const InputMessageAnimation({
    required this.animation,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
  });

  /// Animation file to be sent
  final InputFile animation;

  /// Animation thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// File identifiers of the stickers added to the animation, if applicable
  final List<int> addedStickerFileIds;

  /// Duration of the animation, in seconds
  final int duration;

  /// Width of the animation; may be replaced by the server
  final int width;

  /// Height of the animation; may be replaced by the server
  final int height;

  /// Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// True, if the caption must be shown above the animation; otherwise, the caption must be shown below the animation; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// True, if the animation preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;

  /// Parse from a json
  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) =>
      InputMessageAnimation(
        animation: InputFile.fromJson(json['animation']),
        thumbnail: json['thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['thumbnail']),
        addedStickerFileIds: List<int>.from(
          (json['added_sticker_file_ids'] ?? []).map((item) => item).toList(),
        ),
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
        showCaptionAboveMedia: json['show_caption_above_media'],
        hasSpoiler: json['has_spoiler'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "animation": animation.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "has_spoiler": hasSpoiler,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [animation]: Animation file to be sent
  /// * [thumbnail]: Animation thumbnail; pass null to skip thumbnail uploading
  /// * [added_sticker_file_ids]: File identifiers of the stickers added to the animation, if applicable
  /// * [duration]: Duration of the animation, in seconds
  /// * [width]: Width of the animation; may be replaced by the server
  /// * [height]: Height of the animation; may be replaced by the server
  /// * [caption]: Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  /// * [show_caption_above_media]: True, if the caption must be shown above the animation; otherwise, the caption must be shown below the animation; not supported in secret chats
  /// * [has_spoiler]: True, if the animation preview must be covered by a spoiler animation; not supported in secret chats
  @override
  InputMessageAnimation copyWith({
    InputFile? animation,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    bool? hasSpoiler,
  }) => InputMessageAnimation(
    animation: animation ?? this.animation,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageAnimation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageAudio** *(inputMessageAudio)* - child of InputMessageContent
///
/// An audio message.
///
/// * [audio]: Audio file to be sent.
/// * [albumCoverThumbnail]: Thumbnail of the cover for the album; pass null to skip thumbnail uploading *(optional)*.
/// * [duration]: Duration of the audio, in seconds; may be replaced by the server.
/// * [title]: Title of the audio; 0-64 characters; may be replaced by the server.
/// * [performer]: Performer of the audio; 0-64 characters, may be replaced by the server.
/// * [caption]: Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
final class InputMessageAudio extends InputMessageContent {
  /// **InputMessageAudio** *(inputMessageAudio)* - child of InputMessageContent
  ///
  /// An audio message.
  ///
  /// * [audio]: Audio file to be sent.
  /// * [albumCoverThumbnail]: Thumbnail of the cover for the album; pass null to skip thumbnail uploading *(optional)*.
  /// * [duration]: Duration of the audio, in seconds; may be replaced by the server.
  /// * [title]: Title of the audio; 0-64 characters; may be replaced by the server.
  /// * [performer]: Performer of the audio; 0-64 characters, may be replaced by the server.
  /// * [caption]: Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  const InputMessageAudio({
    required this.audio,
    this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
    this.caption,
  });

  /// Audio file to be sent
  final InputFile audio;

  /// Thumbnail of the cover for the album; pass null to skip thumbnail uploading
  final InputThumbnail? albumCoverThumbnail;

  /// Duration of the audio, in seconds; may be replaced by the server
  final int duration;

  /// Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// Performer of the audio; 0-64 characters, may be replaced by the server
  final String performer;

  /// Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// Parse from a json
  factory InputMessageAudio.fromJson(Map<String, dynamic> json) =>
      InputMessageAudio(
        audio: InputFile.fromJson(json['audio']),
        albumCoverThumbnail: json['album_cover_thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['album_cover_thumbnail']),
        duration: json['duration'],
        title: json['title'],
        performer: json['performer'],
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "audio": audio.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "duration": duration,
      "title": title,
      "performer": performer,
      "caption": caption?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [audio]: Audio file to be sent
  /// * [album_cover_thumbnail]: Thumbnail of the cover for the album; pass null to skip thumbnail uploading
  /// * [duration]: Duration of the audio, in seconds; may be replaced by the server
  /// * [title]: Title of the audio; 0-64 characters; may be replaced by the server
  /// * [performer]: Performer of the audio; 0-64 characters, may be replaced by the server
  /// * [caption]: Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  @override
  InputMessageAudio copyWith({
    InputFile? audio,
    InputThumbnail? albumCoverThumbnail,
    int? duration,
    String? title,
    String? performer,
    FormattedText? caption,
  }) => InputMessageAudio(
    audio: audio ?? this.audio,
    albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
    duration: duration ?? this.duration,
    title: title ?? this.title,
    performer: performer ?? this.performer,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageAudio';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageDocument** *(inputMessageDocument)* - child of InputMessageContent
///
/// A document message (general file).
///
/// * [document]: Document to be sent.
/// * [thumbnail]: Document thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [disableContentTypeDetection]: Pass true to disable automatic file type detection and send the document as a file. Always true for files sent to secret chats.
/// * [caption]: Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
final class InputMessageDocument extends InputMessageContent {
  /// **InputMessageDocument** *(inputMessageDocument)* - child of InputMessageContent
  ///
  /// A document message (general file).
  ///
  /// * [document]: Document to be sent.
  /// * [thumbnail]: Document thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [disableContentTypeDetection]: Pass true to disable automatic file type detection and send the document as a file. Always true for files sent to secret chats.
  /// * [caption]: Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  const InputMessageDocument({
    required this.document,
    this.thumbnail,
    required this.disableContentTypeDetection,
    this.caption,
  });

  /// Document to be sent
  final InputFile document;

  /// Document thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// Pass true to disable automatic file type detection and send the document as a file. Always true for files sent to secret chats
  final bool disableContentTypeDetection;

  /// Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// Parse from a json
  factory InputMessageDocument.fromJson(Map<String, dynamic> json) =>
      InputMessageDocument(
        document: InputFile.fromJson(json['document']),
        thumbnail: json['thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['thumbnail']),
        disableContentTypeDetection: json['disable_content_type_detection'],
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "document": document.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "disable_content_type_detection": disableContentTypeDetection,
      "caption": caption?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [document]: Document to be sent
  /// * [thumbnail]: Document thumbnail; pass null to skip thumbnail uploading
  /// * [disable_content_type_detection]: Pass true to disable automatic file type detection and send the document as a file. Always true for files sent to secret chats
  /// * [caption]: Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  @override
  InputMessageDocument copyWith({
    InputFile? document,
    InputThumbnail? thumbnail,
    bool? disableContentTypeDetection,
    FormattedText? caption,
  }) => InputMessageDocument(
    document: document ?? this.document,
    thumbnail: thumbnail ?? this.thumbnail,
    disableContentTypeDetection:
        disableContentTypeDetection ?? this.disableContentTypeDetection,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageDocument';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessagePaidMedia** *(inputMessagePaidMedia)* - child of InputMessageContent
///
/// A message with paid media; can be used only in channel chats with supergroupFullInfo.has_paid_media_allowed.
///
/// * [starCount]: The number of Telegram Stars that must be paid to see the media; 1-getOption("paid_media_message_star_count_max").
/// * [paidMedia]: The content of the paid media.
/// * [caption]: Message caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [showCaptionAboveMedia]: True, if the caption must be shown above the media; otherwise, the caption must be shown below the media; not supported in secret chats.
/// * [payload]: Bot-provided data for the paid media; bots only.
final class InputMessagePaidMedia extends InputMessageContent {
  /// **InputMessagePaidMedia** *(inputMessagePaidMedia)* - child of InputMessageContent
  ///
  /// A message with paid media; can be used only in channel chats with supergroupFullInfo.has_paid_media_allowed.
  ///
  /// * [starCount]: The number of Telegram Stars that must be paid to see the media; 1-getOption("paid_media_message_star_count_max").
  /// * [paidMedia]: The content of the paid media.
  /// * [caption]: Message caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [showCaptionAboveMedia]: True, if the caption must be shown above the media; otherwise, the caption must be shown below the media; not supported in secret chats.
  /// * [payload]: Bot-provided data for the paid media; bots only.
  const InputMessagePaidMedia({
    required this.starCount,
    required this.paidMedia,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.payload,
  });

  /// The number of Telegram Stars that must be paid to see the media; 1-getOption("paid_media_message_star_count_max")
  final int starCount;

  /// The content of the paid media
  final List<InputPaidMedia> paidMedia;

  /// Message caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// True, if the caption must be shown above the media; otherwise, the caption must be shown below the media; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// Bot-provided data for the paid media; bots only
  final String payload;

  /// Parse from a json
  factory InputMessagePaidMedia.fromJson(Map<String, dynamic> json) =>
      InputMessagePaidMedia(
        starCount: json['star_count'],
        paidMedia: List<InputPaidMedia>.from(
          (json['paid_media'] ?? [])
              .map((item) => InputPaidMedia.fromJson(item))
              .toList(),
        ),
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
        showCaptionAboveMedia: json['show_caption_above_media'],
        payload: json['payload'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "star_count": starCount,
      "paid_media": paidMedia.map((i) => i.toJson()).toList(),
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "payload": payload,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [star_count]: The number of Telegram Stars that must be paid to see the media; 1-getOption("paid_media_message_star_count_max")
  /// * [paid_media]: The content of the paid media
  /// * [caption]: Message caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  /// * [show_caption_above_media]: True, if the caption must be shown above the media; otherwise, the caption must be shown below the media; not supported in secret chats
  /// * [payload]: Bot-provided data for the paid media; bots only
  @override
  InputMessagePaidMedia copyWith({
    int? starCount,
    List<InputPaidMedia>? paidMedia,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    String? payload,
  }) => InputMessagePaidMedia(
    starCount: starCount ?? this.starCount,
    paidMedia: paidMedia ?? this.paidMedia,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    payload: payload ?? this.payload,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessagePaidMedia';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessagePhoto** *(inputMessagePhoto)* - child of InputMessageContent
///
/// A photo message.
///
/// * [photo]: Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20.
/// * [thumbnail]: Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats *(optional)*.
/// * [addedStickerFileIds]: File identifiers of the stickers added to the photo, if applicable.
/// * [width]: Photo width.
/// * [height]: Photo height.
/// * [caption]: Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [showCaptionAboveMedia]: True, if the caption must be shown above the photo; otherwise, the caption must be shown below the photo; not supported in secret chats.
/// * [selfDestructType]: Photo self-destruct type; pass null if none; private chats only *(optional)*.
/// * [hasSpoiler]: True, if the photo preview must be covered by a spoiler animation; not supported in secret chats.
final class InputMessagePhoto extends InputMessageContent {
  /// **InputMessagePhoto** *(inputMessagePhoto)* - child of InputMessageContent
  ///
  /// A photo message.
  ///
  /// * [photo]: Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20.
  /// * [thumbnail]: Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats *(optional)*.
  /// * [addedStickerFileIds]: File identifiers of the stickers added to the photo, if applicable.
  /// * [width]: Photo width.
  /// * [height]: Photo height.
  /// * [caption]: Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [showCaptionAboveMedia]: True, if the caption must be shown above the photo; otherwise, the caption must be shown below the photo; not supported in secret chats.
  /// * [selfDestructType]: Photo self-destruct type; pass null if none; private chats only *(optional)*.
  /// * [hasSpoiler]: True, if the photo preview must be covered by a spoiler animation; not supported in secret chats.
  const InputMessagePhoto({
    required this.photo,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
  final InputFile photo;

  /// Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats
  final InputThumbnail? thumbnail;

  /// File identifiers of the stickers added to the photo, if applicable
  final List<int> addedStickerFileIds;

  /// Photo width
  final int width;

  /// Photo height
  final int height;

  /// Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// True, if the caption must be shown above the photo; otherwise, the caption must be shown below the photo; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// Photo self-destruct type; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  /// True, if the photo preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;

  /// Parse from a json
  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) =>
      InputMessagePhoto(
        photo: InputFile.fromJson(json['photo']),
        thumbnail: json['thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['thumbnail']),
        addedStickerFileIds: List<int>.from(
          (json['added_sticker_file_ids'] ?? []).map((item) => item).toList(),
        ),
        width: json['width'],
        height: json['height'],
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
        showCaptionAboveMedia: json['show_caption_above_media'],
        selfDestructType: json['self_destruct_type'] == null
            ? null
            : MessageSelfDestructType.fromJson(json['self_destruct_type']),
        hasSpoiler: json['has_spoiler'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "photo": photo.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "self_destruct_type": selfDestructType?.toJson(),
      "has_spoiler": hasSpoiler,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [photo]: Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
  /// * [thumbnail]: Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats
  /// * [added_sticker_file_ids]: File identifiers of the stickers added to the photo, if applicable
  /// * [width]: Photo width
  /// * [height]: Photo height
  /// * [caption]: Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  /// * [show_caption_above_media]: True, if the caption must be shown above the photo; otherwise, the caption must be shown below the photo; not supported in secret chats
  /// * [self_destruct_type]: Photo self-destruct type; pass null if none; private chats only
  /// * [has_spoiler]: True, if the photo preview must be covered by a spoiler animation; not supported in secret chats
  @override
  InputMessagePhoto copyWith({
    InputFile? photo,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? width,
    int? height,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    MessageSelfDestructType? selfDestructType,
    bool? hasSpoiler,
  }) => InputMessagePhoto(
    photo: photo ?? this.photo,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    selfDestructType: selfDestructType ?? this.selfDestructType,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessagePhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageSticker** *(inputMessageSticker)* - child of InputMessageContent
///
/// A sticker message.
///
/// * [sticker]: Sticker to be sent.
/// * [thumbnail]: Sticker thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [width]: Sticker width.
/// * [height]: Sticker height.
/// * [emoji]: Emoji used to choose the sticker.
final class InputMessageSticker extends InputMessageContent {
  /// **InputMessageSticker** *(inputMessageSticker)* - child of InputMessageContent
  ///
  /// A sticker message.
  ///
  /// * [sticker]: Sticker to be sent.
  /// * [thumbnail]: Sticker thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [width]: Sticker width.
  /// * [height]: Sticker height.
  /// * [emoji]: Emoji used to choose the sticker.
  const InputMessageSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });

  /// Sticker to be sent
  final InputFile sticker;

  /// Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// Sticker width
  final int width;

  /// Sticker height
  final int height;

  /// Emoji used to choose the sticker
  final String emoji;

  /// Parse from a json
  factory InputMessageSticker.fromJson(Map<String, dynamic> json) =>
      InputMessageSticker(
        sticker: InputFile.fromJson(json['sticker']),
        thumbnail: json['thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['thumbnail']),
        width: json['width'],
        height: json['height'],
        emoji: json['emoji'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sticker": sticker.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "width": width,
      "height": height,
      "emoji": emoji,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker]: Sticker to be sent
  /// * [thumbnail]: Sticker thumbnail; pass null to skip thumbnail uploading
  /// * [width]: Sticker width
  /// * [height]: Sticker height
  /// * [emoji]: Emoji used to choose the sticker
  @override
  InputMessageSticker copyWith({
    InputFile? sticker,
    InputThumbnail? thumbnail,
    int? width,
    int? height,
    String? emoji,
  }) => InputMessageSticker(
    sticker: sticker ?? this.sticker,
    thumbnail: thumbnail ?? this.thumbnail,
    width: width ?? this.width,
    height: height ?? this.height,
    emoji: emoji ?? this.emoji,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageSticker';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageVideo** *(inputMessageVideo)* - child of InputMessageContent
///
/// A video message.
///
/// * [video]: Video to be sent. The video is expected to be re-encoded to MPEG4 format with H.264 codec by the sender.
/// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [cover]: Cover of the video; pass null to skip cover uploading; not supported in secret chats and for self-destructing messages *(optional)*.
/// * [startTimestamp]: Timestamp from which the video playing must start, in seconds.
/// * [addedStickerFileIds]: File identifiers of the stickers added to the video, if applicable.
/// * [duration]: Duration of the video, in seconds.
/// * [width]: Video width.
/// * [height]: Video height.
/// * [supportsStreaming]: True, if the video is expected to be streamed.
/// * [caption]: Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [showCaptionAboveMedia]: True, if the caption must be shown above the video; otherwise, the caption must be shown below the video; not supported in secret chats.
/// * [selfDestructType]: Video self-destruct type; pass null if none; private chats only *(optional)*.
/// * [hasSpoiler]: True, if the video preview must be covered by a spoiler animation; not supported in secret chats.
final class InputMessageVideo extends InputMessageContent {
  /// **InputMessageVideo** *(inputMessageVideo)* - child of InputMessageContent
  ///
  /// A video message.
  ///
  /// * [video]: Video to be sent. The video is expected to be re-encoded to MPEG4 format with H.264 codec by the sender.
  /// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [cover]: Cover of the video; pass null to skip cover uploading; not supported in secret chats and for self-destructing messages *(optional)*.
  /// * [startTimestamp]: Timestamp from which the video playing must start, in seconds.
  /// * [addedStickerFileIds]: File identifiers of the stickers added to the video, if applicable.
  /// * [duration]: Duration of the video, in seconds.
  /// * [width]: Video width.
  /// * [height]: Video height.
  /// * [supportsStreaming]: True, if the video is expected to be streamed.
  /// * [caption]: Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [showCaptionAboveMedia]: True, if the caption must be shown above the video; otherwise, the caption must be shown below the video; not supported in secret chats.
  /// * [selfDestructType]: Video self-destruct type; pass null if none; private chats only *(optional)*.
  /// * [hasSpoiler]: True, if the video preview must be covered by a spoiler animation; not supported in secret chats.
  const InputMessageVideo({
    required this.video,
    this.thumbnail,
    this.cover,
    required this.startTimestamp,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// Video to be sent. The video is expected to be re-encoded to MPEG4 format with H.264 codec by the sender
  final InputFile video;

  /// Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// Cover of the video; pass null to skip cover uploading; not supported in secret chats and for self-destructing messages
  final InputFile? cover;

  /// Timestamp from which the video playing must start, in seconds
  final int startTimestamp;

  /// File identifiers of the stickers added to the video, if applicable
  final List<int> addedStickerFileIds;

  /// Duration of the video, in seconds
  final int duration;

  /// Video width
  final int width;

  /// Video height
  final int height;

  /// True, if the video is expected to be streamed
  final bool supportsStreaming;

  /// Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// True, if the caption must be shown above the video; otherwise, the caption must be shown below the video; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// Video self-destruct type; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  /// True, if the video preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;

  /// Parse from a json
  factory InputMessageVideo.fromJson(Map<String, dynamic> json) =>
      InputMessageVideo(
        video: InputFile.fromJson(json['video']),
        thumbnail: json['thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['thumbnail']),
        cover: json['cover'] == null ? null : InputFile.fromJson(json['cover']),
        startTimestamp: json['start_timestamp'],
        addedStickerFileIds: List<int>.from(
          (json['added_sticker_file_ids'] ?? []).map((item) => item).toList(),
        ),
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        supportsStreaming: json['supports_streaming'],
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
        showCaptionAboveMedia: json['show_caption_above_media'],
        selfDestructType: json['self_destruct_type'] == null
            ? null
            : MessageSelfDestructType.fromJson(json['self_destruct_type']),
        hasSpoiler: json['has_spoiler'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "video": video.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "cover": cover?.toJson(),
      "start_timestamp": startTimestamp,
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "supports_streaming": supportsStreaming,
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "self_destruct_type": selfDestructType?.toJson(),
      "has_spoiler": hasSpoiler,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video]: Video to be sent. The video is expected to be re-encoded to MPEG4 format with H.264 codec by the sender
  /// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading
  /// * [cover]: Cover of the video; pass null to skip cover uploading; not supported in secret chats and for self-destructing messages
  /// * [start_timestamp]: Timestamp from which the video playing must start, in seconds
  /// * [added_sticker_file_ids]: File identifiers of the stickers added to the video, if applicable
  /// * [duration]: Duration of the video, in seconds
  /// * [width]: Video width
  /// * [height]: Video height
  /// * [supports_streaming]: True, if the video is expected to be streamed
  /// * [caption]: Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  /// * [show_caption_above_media]: True, if the caption must be shown above the video; otherwise, the caption must be shown below the video; not supported in secret chats
  /// * [self_destruct_type]: Video self-destruct type; pass null if none; private chats only
  /// * [has_spoiler]: True, if the video preview must be covered by a spoiler animation; not supported in secret chats
  @override
  InputMessageVideo copyWith({
    InputFile? video,
    InputThumbnail? thumbnail,
    InputFile? cover,
    int? startTimestamp,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    bool? supportsStreaming,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    MessageSelfDestructType? selfDestructType,
    bool? hasSpoiler,
  }) => InputMessageVideo(
    video: video ?? this.video,
    thumbnail: thumbnail ?? this.thumbnail,
    cover: cover ?? this.cover,
    startTimestamp: startTimestamp ?? this.startTimestamp,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    supportsStreaming: supportsStreaming ?? this.supportsStreaming,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    selfDestructType: selfDestructType ?? this.selfDestructType,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageVideoNote** *(inputMessageVideoNote)* - child of InputMessageContent
///
/// A video note message.
///
/// * [videoNote]: Video note to be sent. The video is expected to be encoded to MPEG4 format with H.264 codec and have no data outside of the visible circle.
/// * [thumbnail]: Video thumbnail; may be null if empty; pass null to skip thumbnail uploading *(optional)*.
/// * [duration]: Duration of the video, in seconds; 0-60.
/// * [length]: Video width and height; must be positive and not greater than 640.
/// * [selfDestructType]: Video note self-destruct type; may be null if none; pass null if none; private chats only *(optional)*.
final class InputMessageVideoNote extends InputMessageContent {
  /// **InputMessageVideoNote** *(inputMessageVideoNote)* - child of InputMessageContent
  ///
  /// A video note message.
  ///
  /// * [videoNote]: Video note to be sent. The video is expected to be encoded to MPEG4 format with H.264 codec and have no data outside of the visible circle.
  /// * [thumbnail]: Video thumbnail; may be null if empty; pass null to skip thumbnail uploading *(optional)*.
  /// * [duration]: Duration of the video, in seconds; 0-60.
  /// * [length]: Video width and height; must be positive and not greater than 640.
  /// * [selfDestructType]: Video note self-destruct type; may be null if none; pass null if none; private chats only *(optional)*.
  const InputMessageVideoNote({
    required this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
    this.selfDestructType,
  });

  /// Video note to be sent. The video is expected to be encoded to MPEG4 format with H.264 codec and have no data outside of the visible circle
  final InputFile videoNote;

  /// Video thumbnail; may be null if empty; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// Duration of the video, in seconds; 0-60
  final int duration;

  /// Video width and height; must be positive and not greater than 640
  final int length;

  /// Video note self-destruct type; may be null if none; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  /// Parse from a json
  factory InputMessageVideoNote.fromJson(Map<String, dynamic> json) =>
      InputMessageVideoNote(
        videoNote: InputFile.fromJson(json['video_note']),
        thumbnail: json['thumbnail'] == null
            ? null
            : InputThumbnail.fromJson(json['thumbnail']),
        duration: json['duration'],
        length: json['length'],
        selfDestructType: json['self_destruct_type'] == null
            ? null
            : MessageSelfDestructType.fromJson(json['self_destruct_type']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "video_note": videoNote.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "length": length,
      "self_destruct_type": selfDestructType?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video_note]: Video note to be sent. The video is expected to be encoded to MPEG4 format with H.264 codec and have no data outside of the visible circle
  /// * [thumbnail]: Video thumbnail; may be null if empty; pass null to skip thumbnail uploading
  /// * [duration]: Duration of the video, in seconds; 0-60
  /// * [length]: Video width and height; must be positive and not greater than 640
  /// * [self_destruct_type]: Video note self-destruct type; may be null if none; pass null if none; private chats only
  @override
  InputMessageVideoNote copyWith({
    InputFile? videoNote,
    InputThumbnail? thumbnail,
    int? duration,
    int? length,
    MessageSelfDestructType? selfDestructType,
  }) => InputMessageVideoNote(
    videoNote: videoNote ?? this.videoNote,
    thumbnail: thumbnail ?? this.thumbnail,
    duration: duration ?? this.duration,
    length: length ?? this.length,
    selfDestructType: selfDestructType ?? this.selfDestructType,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageVideoNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageVoiceNote** *(inputMessageVoiceNote)* - child of InputMessageContent
///
/// A voice note message.
///
/// * [voiceNote]: Voice note to be sent. The voice note must be encoded with the Opus codec and stored inside an OGG container with a single audio channel, or be in MP3 or M4A format as regular audio.
/// * [duration]: Duration of the voice note, in seconds.
/// * [waveform]: Waveform representation of the voice note in 5-bit format.
/// * [caption]: Voice note caption; may be null if empty; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [selfDestructType]: Voice note self-destruct type; may be null if none; pass null if none; private chats only *(optional)*.
final class InputMessageVoiceNote extends InputMessageContent {
  /// **InputMessageVoiceNote** *(inputMessageVoiceNote)* - child of InputMessageContent
  ///
  /// A voice note message.
  ///
  /// * [voiceNote]: Voice note to be sent. The voice note must be encoded with the Opus codec and stored inside an OGG container with a single audio channel, or be in MP3 or M4A format as regular audio.
  /// * [duration]: Duration of the voice note, in seconds.
  /// * [waveform]: Waveform representation of the voice note in 5-bit format.
  /// * [caption]: Voice note caption; may be null if empty; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [selfDestructType]: Voice note self-destruct type; may be null if none; pass null if none; private chats only *(optional)*.
  const InputMessageVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
    this.caption,
    this.selfDestructType,
  });

  /// Voice note to be sent. The voice note must be encoded with the Opus codec and stored inside an OGG container with a single audio channel, or be in MP3 or M4A format as regular audio
  final InputFile voiceNote;

  /// Duration of the voice note, in seconds
  final int duration;

  /// Waveform representation of the voice note in 5-bit format
  final String waveform;

  /// Voice note caption; may be null if empty; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// Voice note self-destruct type; may be null if none; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  /// Parse from a json
  factory InputMessageVoiceNote.fromJson(Map<String, dynamic> json) =>
      InputMessageVoiceNote(
        voiceNote: InputFile.fromJson(json['voice_note']),
        duration: json['duration'],
        waveform: json['waveform'],
        caption: json['caption'] == null
            ? null
            : FormattedText.fromJson(json['caption']),
        selfDestructType: json['self_destruct_type'] == null
            ? null
            : MessageSelfDestructType.fromJson(json['self_destruct_type']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "voice_note": voiceNote.toJson(),
      "duration": duration,
      "waveform": waveform,
      "caption": caption?.toJson(),
      "self_destruct_type": selfDestructType?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [voice_note]: Voice note to be sent. The voice note must be encoded with the Opus codec and stored inside an OGG container with a single audio channel, or be in MP3 or M4A format as regular audio
  /// * [duration]: Duration of the voice note, in seconds
  /// * [waveform]: Waveform representation of the voice note in 5-bit format
  /// * [caption]: Voice note caption; may be null if empty; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  /// * [self_destruct_type]: Voice note self-destruct type; may be null if none; pass null if none; private chats only
  @override
  InputMessageVoiceNote copyWith({
    InputFile? voiceNote,
    int? duration,
    String? waveform,
    FormattedText? caption,
    MessageSelfDestructType? selfDestructType,
  }) => InputMessageVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    duration: duration ?? this.duration,
    waveform: waveform ?? this.waveform,
    caption: caption ?? this.caption,
    selfDestructType: selfDestructType ?? this.selfDestructType,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageVoiceNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageLocation** *(inputMessageLocation)* - child of InputMessageContent
///
/// A message with a location.
///
/// * [location]: Location to be sent.
/// * [livePeriod]: Period for which the location can be updated, in seconds; must be between 60 and 86400 for a temporary live location, 0x7FFFFFFF for permanent live location, and 0 otherwise.
/// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown.
/// * [proximityAlertRadius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages.
final class InputMessageLocation extends InputMessageContent {
  /// **InputMessageLocation** *(inputMessageLocation)* - child of InputMessageContent
  ///
  /// A message with a location.
  ///
  /// * [location]: Location to be sent.
  /// * [livePeriod]: Period for which the location can be updated, in seconds; must be between 60 and 86400 for a temporary live location, 0x7FFFFFFF for permanent live location, and 0 otherwise.
  /// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown.
  /// * [proximityAlertRadius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages.
  const InputMessageLocation({
    required this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// Location to be sent
  final Location location;

  /// Period for which the location can be updated, in seconds; must be between 60 and 86400 for a temporary live location, 0x7FFFFFFF for permanent live location, and 0 otherwise
  final int livePeriod;

  /// For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  final int proximityAlertRadius;

  /// Parse from a json
  factory InputMessageLocation.fromJson(Map<String, dynamic> json) =>
      InputMessageLocation(
        location: Location.fromJson(json['location']),
        livePeriod: json['live_period'],
        heading: json['heading'],
        proximityAlertRadius: json['proximity_alert_radius'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "location": location.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [location]: Location to be sent
  /// * [live_period]: Period for which the location can be updated, in seconds; must be between 60 and 86400 for a temporary live location, 0x7FFFFFFF for permanent live location, and 0 otherwise
  /// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  /// * [proximity_alert_radius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  @override
  InputMessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) => InputMessageLocation(
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageVenue** *(inputMessageVenue)* - child of InputMessageContent
///
/// A message with information about a venue.
///
/// * [venue]: Venue to send.
final class InputMessageVenue extends InputMessageContent {
  /// **InputMessageVenue** *(inputMessageVenue)* - child of InputMessageContent
  ///
  /// A message with information about a venue.
  ///
  /// * [venue]: Venue to send.
  const InputMessageVenue({required this.venue});

  /// Venue to send
  final Venue venue;

  /// Parse from a json
  factory InputMessageVenue.fromJson(Map<String, dynamic> json) =>
      InputMessageVenue(venue: Venue.fromJson(json['venue']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "venue": venue.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [venue]: Venue to send
  @override
  InputMessageVenue copyWith({Venue? venue}) =>
      InputMessageVenue(venue: venue ?? this.venue);

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageVenue';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageContact** *(inputMessageContact)* - child of InputMessageContent
///
/// A message containing a user contact.
///
/// * [contact]: Contact to send.
final class InputMessageContact extends InputMessageContent {
  /// **InputMessageContact** *(inputMessageContact)* - child of InputMessageContent
  ///
  /// A message containing a user contact.
  ///
  /// * [contact]: Contact to send.
  const InputMessageContact({required this.contact});

  /// Contact to send
  final Contact contact;

  /// Parse from a json
  factory InputMessageContact.fromJson(Map<String, dynamic> json) =>
      InputMessageContact(contact: Contact.fromJson(json['contact']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "contact": contact.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [contact]: Contact to send
  @override
  InputMessageContact copyWith({Contact? contact}) =>
      InputMessageContact(contact: contact ?? this.contact);

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageContact';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageDice** *(inputMessageDice)* - child of InputMessageContent
///
/// A dice message.
///
/// * [emoji]: Emoji on which the dice throw animation is based.
/// * [clearDraft]: True, if the chat message draft must be deleted.
final class InputMessageDice extends InputMessageContent {
  /// **InputMessageDice** *(inputMessageDice)* - child of InputMessageContent
  ///
  /// A dice message.
  ///
  /// * [emoji]: Emoji on which the dice throw animation is based.
  /// * [clearDraft]: True, if the chat message draft must be deleted.
  const InputMessageDice({required this.emoji, required this.clearDraft});

  /// Emoji on which the dice throw animation is based
  final String emoji;

  /// True, if the chat message draft must be deleted
  final bool clearDraft;

  /// Parse from a json
  factory InputMessageDice.fromJson(Map<String, dynamic> json) =>
      InputMessageDice(emoji: json['emoji'], clearDraft: json['clear_draft']);

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "emoji": emoji,
      "clear_draft": clearDraft,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [emoji]: Emoji on which the dice throw animation is based
  /// * [clear_draft]: True, if the chat message draft must be deleted
  @override
  InputMessageDice copyWith({String? emoji, bool? clearDraft}) =>
      InputMessageDice(
        emoji: emoji ?? this.emoji,
        clearDraft: clearDraft ?? this.clearDraft,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageDice';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageGame** *(inputMessageGame)* - child of InputMessageContent
///
/// A message with a game; not supported for channels or secret chats.
///
/// * [botUserId]: User identifier of the bot that owns the game.
/// * [gameShortName]: Short name of the game.
final class InputMessageGame extends InputMessageContent {
  /// **InputMessageGame** *(inputMessageGame)* - child of InputMessageContent
  ///
  /// A message with a game; not supported for channels or secret chats.
  ///
  /// * [botUserId]: User identifier of the bot that owns the game.
  /// * [gameShortName]: Short name of the game.
  const InputMessageGame({
    required this.botUserId,
    required this.gameShortName,
  });

  /// User identifier of the bot that owns the game
  final int botUserId;

  /// Short name of the game
  final String gameShortName;

  /// Parse from a json
  factory InputMessageGame.fromJson(Map<String, dynamic> json) =>
      InputMessageGame(
        botUserId: json['bot_user_id'],
        gameShortName: json['game_short_name'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "bot_user_id": botUserId,
      "game_short_name": gameShortName,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bot_user_id]: User identifier of the bot that owns the game
  /// * [game_short_name]: Short name of the game
  @override
  InputMessageGame copyWith({int? botUserId, String? gameShortName}) =>
      InputMessageGame(
        botUserId: botUserId ?? this.botUserId,
        gameShortName: gameShortName ?? this.gameShortName,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageGame';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageInvoice** *(inputMessageInvoice)* - child of InputMessageContent
///
/// A message with an invoice; can be used only by bots.
///
/// * [invoice]: Invoice.
/// * [title]: Product title; 1-32 characters.
/// * [description]: Product description; 0-255 characters.
/// * [photoUrl]: Product photo URL; optional.
/// * [photoSize]: Product photo size.
/// * [photoWidth]: Product photo width.
/// * [photoHeight]: Product photo height.
/// * [payload]: The invoice payload.
/// * [providerToken]: Payment provider token; may be empty for payments in Telegram Stars.
/// * [providerData]: JSON-encoded data about the invoice, which will be shared with the payment provider.
/// * [startParameter]: Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message.
/// * [paidMedia]: The content of paid media attached to the invoice; pass null if none *(optional)*.
/// * [paidMediaCaption]: Paid media caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
final class InputMessageInvoice extends InputMessageContent {
  /// **InputMessageInvoice** *(inputMessageInvoice)* - child of InputMessageContent
  ///
  /// A message with an invoice; can be used only by bots.
  ///
  /// * [invoice]: Invoice.
  /// * [title]: Product title; 1-32 characters.
  /// * [description]: Product description; 0-255 characters.
  /// * [photoUrl]: Product photo URL; optional.
  /// * [photoSize]: Product photo size.
  /// * [photoWidth]: Product photo width.
  /// * [photoHeight]: Product photo height.
  /// * [payload]: The invoice payload.
  /// * [providerToken]: Payment provider token; may be empty for payments in Telegram Stars.
  /// * [providerData]: JSON-encoded data about the invoice, which will be shared with the payment provider.
  /// * [startParameter]: Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message.
  /// * [paidMedia]: The content of paid media attached to the invoice; pass null if none *(optional)*.
  /// * [paidMediaCaption]: Paid media caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  const InputMessageInvoice({
    required this.invoice,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
    this.paidMedia,
    this.paidMediaCaption,
  });

  /// Invoice
  final Invoice invoice;

  /// Product title; 1-32 characters
  final String title;

  /// Product description; 0-255 characters
  final String description;

  /// Product photo URL; optional
  final String photoUrl;

  /// Product photo size
  final int photoSize;

  /// Product photo width
  final int photoWidth;

  /// Product photo height
  final int photoHeight;

  /// The invoice payload
  final String payload;

  /// Payment provider token; may be empty for payments in Telegram Stars
  final String providerToken;

  /// JSON-encoded data about the invoice, which will be shared with the payment provider
  final String providerData;

  /// Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
  final String startParameter;

  /// The content of paid media attached to the invoice; pass null if none
  final InputPaidMedia? paidMedia;

  /// Paid media caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? paidMediaCaption;

  /// Parse from a json
  factory InputMessageInvoice.fromJson(Map<String, dynamic> json) =>
      InputMessageInvoice(
        invoice: Invoice.fromJson(json['invoice']),
        title: json['title'],
        description: json['description'],
        photoUrl: json['photo_url'],
        photoSize: json['photo_size'],
        photoWidth: json['photo_width'],
        photoHeight: json['photo_height'],
        payload: json['payload'],
        providerToken: json['provider_token'],
        providerData: json['provider_data'],
        startParameter: json['start_parameter'],
        paidMedia: json['paid_media'] == null
            ? null
            : InputPaidMedia.fromJson(json['paid_media']),
        paidMediaCaption: json['paid_media_caption'] == null
            ? null
            : FormattedText.fromJson(json['paid_media_caption']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "invoice": invoice.toJson(),
      "title": title,
      "description": description,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "payload": payload,
      "provider_token": providerToken,
      "provider_data": providerData,
      "start_parameter": startParameter,
      "paid_media": paidMedia?.toJson(),
      "paid_media_caption": paidMediaCaption?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [invoice]: Invoice
  /// * [title]: Product title; 1-32 characters
  /// * [description]: Product description; 0-255 characters
  /// * [photo_url]: Product photo URL; optional
  /// * [photo_size]: Product photo size
  /// * [photo_width]: Product photo width
  /// * [photo_height]: Product photo height
  /// * [payload]: The invoice payload
  /// * [provider_token]: Payment provider token; may be empty for payments in Telegram Stars
  /// * [provider_data]: JSON-encoded data about the invoice, which will be shared with the payment provider
  /// * [start_parameter]: Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
  /// * [paid_media]: The content of paid media attached to the invoice; pass null if none
  /// * [paid_media_caption]: Paid media caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  @override
  InputMessageInvoice copyWith({
    Invoice? invoice,
    String? title,
    String? description,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    String? payload,
    String? providerToken,
    String? providerData,
    String? startParameter,
    InputPaidMedia? paidMedia,
    FormattedText? paidMediaCaption,
  }) => InputMessageInvoice(
    invoice: invoice ?? this.invoice,
    title: title ?? this.title,
    description: description ?? this.description,
    photoUrl: photoUrl ?? this.photoUrl,
    photoSize: photoSize ?? this.photoSize,
    photoWidth: photoWidth ?? this.photoWidth,
    photoHeight: photoHeight ?? this.photoHeight,
    payload: payload ?? this.payload,
    providerToken: providerToken ?? this.providerToken,
    providerData: providerData ?? this.providerData,
    startParameter: startParameter ?? this.startParameter,
    paidMedia: paidMedia ?? this.paidMedia,
    paidMediaCaption: paidMediaCaption ?? this.paidMediaCaption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageInvoice';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessagePoll** *(inputMessagePoll)* - child of InputMessageContent
///
/// A message with a poll. Polls can't be sent to secret chats and channel direct messages chats. Polls can be sent to a private chat only if the chat is a chat with a bot or the Saved Messages chat.
///
/// * [question]: Poll question; 1-255 characters (up to 300 characters for bots). Only custom emoji entities are allowed to be added and only by Premium users.
/// * [options]: List of poll answer options, 2-getOption("poll_answer_count_max") strings 1-100 characters each. Only custom emoji entities are allowed to be added and only by Premium users.
/// * [isAnonymous]: True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels.
/// * [type]: Type of the poll.
/// * [openPeriod]: Amount of time the poll will be active after creation, in seconds; for bots only.
/// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed; for bots only.
/// * [isClosed]: True, if the poll needs to be sent already closed; for bots only.
final class InputMessagePoll extends InputMessageContent {
  /// **InputMessagePoll** *(inputMessagePoll)* - child of InputMessageContent
  ///
  /// A message with a poll. Polls can't be sent to secret chats and channel direct messages chats. Polls can be sent to a private chat only if the chat is a chat with a bot or the Saved Messages chat.
  ///
  /// * [question]: Poll question; 1-255 characters (up to 300 characters for bots). Only custom emoji entities are allowed to be added and only by Premium users.
  /// * [options]: List of poll answer options, 2-getOption("poll_answer_count_max") strings 1-100 characters each. Only custom emoji entities are allowed to be added and only by Premium users.
  /// * [isAnonymous]: True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels.
  /// * [type]: Type of the poll.
  /// * [openPeriod]: Amount of time the poll will be active after creation, in seconds; for bots only.
  /// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed; for bots only.
  /// * [isClosed]: True, if the poll needs to be sent already closed; for bots only.
  const InputMessagePoll({
    required this.question,
    required this.options,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });

  /// Poll question; 1-255 characters (up to 300 characters for bots). Only custom emoji entities are allowed to be added and only by Premium users
  final FormattedText question;

  /// List of poll answer options, 2-getOption("poll_answer_count_max") strings 1-100 characters each. Only custom emoji entities are allowed to be added and only by Premium users
  final List<FormattedText> options;

  /// True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  final bool isAnonymous;

  /// Type of the poll
  final PollType type;

  /// Amount of time the poll will be active after creation, in seconds; for bots only
  final int openPeriod;

  /// Point in time (Unix timestamp) when the poll will automatically be closed; for bots only
  final int closeDate;

  /// True, if the poll needs to be sent already closed; for bots only
  final bool isClosed;

  /// Parse from a json
  factory InputMessagePoll.fromJson(Map<String, dynamic> json) =>
      InputMessagePoll(
        question: FormattedText.fromJson(json['question']),
        options: List<FormattedText>.from(
          (json['options'] ?? [])
              .map((item) => FormattedText.fromJson(item))
              .toList(),
        ),
        isAnonymous: json['is_anonymous'],
        type: PollType.fromJson(json['type']),
        openPeriod: json['open_period'],
        closeDate: json['close_date'],
        isClosed: json['is_closed'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "question": question.toJson(),
      "options": options.map((i) => i.toJson()).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [question]: Poll question; 1-255 characters (up to 300 characters for bots). Only custom emoji entities are allowed to be added and only by Premium users
  /// * [options]: List of poll answer options, 2-getOption("poll_answer_count_max") strings 1-100 characters each. Only custom emoji entities are allowed to be added and only by Premium users
  /// * [is_anonymous]: True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  /// * [type]: Type of the poll
  /// * [open_period]: Amount of time the poll will be active after creation, in seconds; for bots only
  /// * [close_date]: Point in time (Unix timestamp) when the poll will automatically be closed; for bots only
  /// * [is_closed]: True, if the poll needs to be sent already closed; for bots only
  @override
  InputMessagePoll copyWith({
    FormattedText? question,
    List<FormattedText>? options,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) => InputMessagePoll(
    question: question ?? this.question,
    options: options ?? this.options,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    type: type ?? this.type,
    openPeriod: openPeriod ?? this.openPeriod,
    closeDate: closeDate ?? this.closeDate,
    isClosed: isClosed ?? this.isClosed,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessagePoll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageStory** *(inputMessageStory)* - child of InputMessageContent
///
/// A message with a forwarded story. Stories can't be forwarded to secret chats. A story can be forwarded only if story.can_be_forwarded.
///
/// * [storyPosterChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Story identifier.
final class InputMessageStory extends InputMessageContent {
  /// **InputMessageStory** *(inputMessageStory)* - child of InputMessageContent
  ///
  /// A message with a forwarded story. Stories can't be forwarded to secret chats. A story can be forwarded only if story.can_be_forwarded.
  ///
  /// * [storyPosterChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Story identifier.
  const InputMessageStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// Story identifier
  final int storyId;

  /// Parse from a json
  factory InputMessageStory.fromJson(Map<String, dynamic> json) =>
      InputMessageStory(
        storyPosterChatId: json['story_poster_chat_id'],
        storyId: json['story_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_poster_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Story identifier
  @override
  InputMessageStory copyWith({int? storyPosterChatId, int? storyId}) =>
      InputMessageStory(
        storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
        storyId: storyId ?? this.storyId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageChecklist** *(inputMessageChecklist)* - child of InputMessageContent
///
/// A message with a checklist. Checklists can't be sent to secret chats, channel chats and channel direct messages chats; for Telegram Premium users only.
///
/// * [checklist]: The checklist to send.
final class InputMessageChecklist extends InputMessageContent {
  /// **InputMessageChecklist** *(inputMessageChecklist)* - child of InputMessageContent
  ///
  /// A message with a checklist. Checklists can't be sent to secret chats, channel chats and channel direct messages chats; for Telegram Premium users only.
  ///
  /// * [checklist]: The checklist to send.
  const InputMessageChecklist({required this.checklist});

  /// The checklist to send
  final InputChecklist checklist;

  /// Parse from a json
  factory InputMessageChecklist.fromJson(Map<String, dynamic> json) =>
      InputMessageChecklist(
        checklist: InputChecklist.fromJson(json['checklist']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "checklist": checklist.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [checklist]: The checklist to send
  @override
  InputMessageChecklist copyWith({InputChecklist? checklist}) =>
      InputMessageChecklist(checklist: checklist ?? this.checklist);

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageChecklist';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageForwarded** *(inputMessageForwarded)* - child of InputMessageContent
///
/// A forwarded message.
///
/// * [fromChatId]: Identifier for the chat this forwarded message came from.
/// * [messageId]: Identifier of the message to forward. A message can be forwarded only if messageProperties.can_be_forwarded.
/// * [inGameShare]: Pass true if a game message is being shared from a launched game; applies only to game messages.
/// * [replaceVideoStartTimestamp]: Pass true to replace video start timestamp in the forwarded message.
/// * [newVideoStartTimestamp]: The new video start timestamp; ignored if replace_video_start_timestamp == false.
/// * [copyOptions]: Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual *(optional)*.
final class InputMessageForwarded extends InputMessageContent {
  /// **InputMessageForwarded** *(inputMessageForwarded)* - child of InputMessageContent
  ///
  /// A forwarded message.
  ///
  /// * [fromChatId]: Identifier for the chat this forwarded message came from.
  /// * [messageId]: Identifier of the message to forward. A message can be forwarded only if messageProperties.can_be_forwarded.
  /// * [inGameShare]: Pass true if a game message is being shared from a launched game; applies only to game messages.
  /// * [replaceVideoStartTimestamp]: Pass true to replace video start timestamp in the forwarded message.
  /// * [newVideoStartTimestamp]: The new video start timestamp; ignored if replace_video_start_timestamp == false.
  /// * [copyOptions]: Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual *(optional)*.
  const InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    required this.replaceVideoStartTimestamp,
    required this.newVideoStartTimestamp,
    this.copyOptions,
  });

  /// Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// Identifier of the message to forward. A message can be forwarded only if messageProperties.can_be_forwarded
  final int messageId;

  /// Pass true if a game message is being shared from a launched game; applies only to game messages
  final bool inGameShare;

  /// Pass true to replace video start timestamp in the forwarded message
  final bool replaceVideoStartTimestamp;

  /// The new video start timestamp; ignored if replace_video_start_timestamp == false
  final int newVideoStartTimestamp;

  /// Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual
  final MessageCopyOptions? copyOptions;

  /// Parse from a json
  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) =>
      InputMessageForwarded(
        fromChatId: json['from_chat_id'],
        messageId: json['message_id'],
        inGameShare: json['in_game_share'],
        replaceVideoStartTimestamp: json['replace_video_start_timestamp'],
        newVideoStartTimestamp: json['new_video_start_timestamp'],
        copyOptions: json['copy_options'] == null
            ? null
            : MessageCopyOptions.fromJson(json['copy_options']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "from_chat_id": fromChatId,
      "message_id": messageId,
      "in_game_share": inGameShare,
      "replace_video_start_timestamp": replaceVideoStartTimestamp,
      "new_video_start_timestamp": newVideoStartTimestamp,
      "copy_options": copyOptions?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [from_chat_id]: Identifier for the chat this forwarded message came from
  /// * [message_id]: Identifier of the message to forward. A message can be forwarded only if messageProperties.can_be_forwarded
  /// * [in_game_share]: Pass true if a game message is being shared from a launched game; applies only to game messages
  /// * [replace_video_start_timestamp]: Pass true to replace video start timestamp in the forwarded message
  /// * [new_video_start_timestamp]: The new video start timestamp; ignored if replace_video_start_timestamp == false
  /// * [copy_options]: Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual
  @override
  InputMessageForwarded copyWith({
    int? fromChatId,
    int? messageId,
    bool? inGameShare,
    bool? replaceVideoStartTimestamp,
    int? newVideoStartTimestamp,
    MessageCopyOptions? copyOptions,
  }) => InputMessageForwarded(
    fromChatId: fromChatId ?? this.fromChatId,
    messageId: messageId ?? this.messageId,
    inGameShare: inGameShare ?? this.inGameShare,
    replaceVideoStartTimestamp:
        replaceVideoStartTimestamp ?? this.replaceVideoStartTimestamp,
    newVideoStartTimestamp:
        newVideoStartTimestamp ?? this.newVideoStartTimestamp,
    copyOptions: copyOptions ?? this.copyOptions,
  );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageForwarded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
