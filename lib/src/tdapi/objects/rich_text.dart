part of '../tdapi.dart';

/// **RichText** *(richText)* - parent
///
/// Describes a formatted text object.
sealed class RichText extends TdObject {
  /// **RichText** *(richText)* - parent
  ///
  /// Describes a formatted text object.
  const RichText();

  /// a RichText return type can be :
  /// * [RichTextPlain]
  /// * [RichTextBold]
  /// * [RichTextItalic]
  /// * [RichTextUnderline]
  /// * [RichTextStrikethrough]
  /// * [RichTextFixed]
  /// * [RichTextUrl]
  /// * [RichTextEmailAddress]
  /// * [RichTextSubscript]
  /// * [RichTextSuperscript]
  /// * [RichTextMarked]
  /// * [RichTextPhoneNumber]
  /// * [RichTextIcon]
  /// * [RichTextReference]
  /// * [RichTextAnchor]
  /// * [RichTextAnchorLink]
  /// * [RichTexts]
  factory RichText.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case RichTextPlain.defaultObjectId:
        return RichTextPlain.fromJson(json);
      case RichTextBold.defaultObjectId:
        return RichTextBold.fromJson(json);
      case RichTextItalic.defaultObjectId:
        return RichTextItalic.fromJson(json);
      case RichTextUnderline.defaultObjectId:
        return RichTextUnderline.fromJson(json);
      case RichTextStrikethrough.defaultObjectId:
        return RichTextStrikethrough.fromJson(json);
      case RichTextFixed.defaultObjectId:
        return RichTextFixed.fromJson(json);
      case RichTextUrl.defaultObjectId:
        return RichTextUrl.fromJson(json);
      case RichTextEmailAddress.defaultObjectId:
        return RichTextEmailAddress.fromJson(json);
      case RichTextSubscript.defaultObjectId:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.defaultObjectId:
        return RichTextSuperscript.fromJson(json);
      case RichTextMarked.defaultObjectId:
        return RichTextMarked.fromJson(json);
      case RichTextPhoneNumber.defaultObjectId:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextIcon.defaultObjectId:
        return RichTextIcon.fromJson(json);
      case RichTextReference.defaultObjectId:
        return RichTextReference.fromJson(json);
      case RichTextAnchor.defaultObjectId:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.defaultObjectId:
        return RichTextAnchorLink.fromJson(json);
      case RichTexts.defaultObjectId:
        return RichTexts.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of RichText)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  RichText copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'richText';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextPlain** *(richTextPlain)* - child of RichText
///
/// A plain text.
///
/// * [text]: Text.
final class RichTextPlain extends RichText {
  /// **RichTextPlain** *(richTextPlain)* - child of RichText
  ///
  /// A plain text.
  ///
  /// * [text]: Text.
  const RichTextPlain({required this.text});

  /// Text
  final String text;

  /// Parse from a json
  factory RichTextPlain.fromJson(Map<String, dynamic> json) =>
      RichTextPlain(text: json['text']);

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextPlain copyWith({String? text}) =>
      RichTextPlain(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextPlain';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextBold** *(richTextBold)* - child of RichText
///
/// A bold rich text.
///
/// * [text]: Text.
final class RichTextBold extends RichText {
  /// **RichTextBold** *(richTextBold)* - child of RichText
  ///
  /// A bold rich text.
  ///
  /// * [text]: Text.
  const RichTextBold({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextBold.fromJson(Map<String, dynamic> json) =>
      RichTextBold(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextBold copyWith({RichText? text}) =>
      RichTextBold(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextBold';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextItalic** *(richTextItalic)* - child of RichText
///
/// An italicized rich text.
///
/// * [text]: Text.
final class RichTextItalic extends RichText {
  /// **RichTextItalic** *(richTextItalic)* - child of RichText
  ///
  /// An italicized rich text.
  ///
  /// * [text]: Text.
  const RichTextItalic({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextItalic.fromJson(Map<String, dynamic> json) =>
      RichTextItalic(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextItalic copyWith({RichText? text}) =>
      RichTextItalic(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextItalic';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextUnderline** *(richTextUnderline)* - child of RichText
///
/// An underlined rich text.
///
/// * [text]: Text.
final class RichTextUnderline extends RichText {
  /// **RichTextUnderline** *(richTextUnderline)* - child of RichText
  ///
  /// An underlined rich text.
  ///
  /// * [text]: Text.
  const RichTextUnderline({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextUnderline.fromJson(Map<String, dynamic> json) =>
      RichTextUnderline(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextUnderline copyWith({RichText? text}) =>
      RichTextUnderline(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextUnderline';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextStrikethrough** *(richTextStrikethrough)* - child of RichText
///
/// A strikethrough rich text.
///
/// * [text]: Text.
final class RichTextStrikethrough extends RichText {
  /// **RichTextStrikethrough** *(richTextStrikethrough)* - child of RichText
  ///
  /// A strikethrough rich text.
  ///
  /// * [text]: Text.
  const RichTextStrikethrough({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextStrikethrough.fromJson(Map<String, dynamic> json) =>
      RichTextStrikethrough(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextStrikethrough copyWith({RichText? text}) =>
      RichTextStrikethrough(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextStrikethrough';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextFixed** *(richTextFixed)* - child of RichText
///
/// A fixed-width rich text.
///
/// * [text]: Text.
final class RichTextFixed extends RichText {
  /// **RichTextFixed** *(richTextFixed)* - child of RichText
  ///
  /// A fixed-width rich text.
  ///
  /// * [text]: Text.
  const RichTextFixed({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextFixed.fromJson(Map<String, dynamic> json) =>
      RichTextFixed(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextFixed copyWith({RichText? text}) =>
      RichTextFixed(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextFixed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextUrl** *(richTextUrl)* - child of RichText
///
/// A rich text URL link.
///
/// * [text]: Text.
/// * [url]: URL.
/// * [isCached]: True, if the URL has cached instant view server-side.
final class RichTextUrl extends RichText {
  /// **RichTextUrl** *(richTextUrl)* - child of RichText
  ///
  /// A rich text URL link.
  ///
  /// * [text]: Text.
  /// * [url]: URL.
  /// * [isCached]: True, if the URL has cached instant view server-side.
  const RichTextUrl({
    required this.text,
    required this.url,
    required this.isCached,
  });

  /// Text
  final RichText text;

  /// URL
  final String url;

  /// True, if the URL has cached instant view server-side
  final bool isCached;

  /// Parse from a json
  factory RichTextUrl.fromJson(Map<String, dynamic> json) => RichTextUrl(
    text: RichText.fromJson(json['text']),
    url: json['url'],
    isCached: json['is_cached'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "url": url,
      "is_cached": isCached,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  /// * [url]: URL
  /// * [is_cached]: True, if the URL has cached instant view server-side
  @override
  RichTextUrl copyWith({RichText? text, String? url, bool? isCached}) =>
      RichTextUrl(
        text: text ?? this.text,
        url: url ?? this.url,
        isCached: isCached ?? this.isCached,
      );

  /// TDLib object type
  static const String defaultObjectId = 'richTextUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextEmailAddress** *(richTextEmailAddress)* - child of RichText
///
/// A rich text email link.
///
/// * [text]: Text.
/// * [emailAddress]: Email address.
final class RichTextEmailAddress extends RichText {
  /// **RichTextEmailAddress** *(richTextEmailAddress)* - child of RichText
  ///
  /// A rich text email link.
  ///
  /// * [text]: Text.
  /// * [emailAddress]: Email address.
  const RichTextEmailAddress({required this.text, required this.emailAddress});

  /// Text
  final RichText text;

  /// Email address
  final String emailAddress;

  /// Parse from a json
  factory RichTextEmailAddress.fromJson(Map<String, dynamic> json) =>
      RichTextEmailAddress(
        text: RichText.fromJson(json['text']),
        emailAddress: json['email_address'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "email_address": emailAddress,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  /// * [email_address]: Email address
  @override
  RichTextEmailAddress copyWith({RichText? text, String? emailAddress}) =>
      RichTextEmailAddress(
        text: text ?? this.text,
        emailAddress: emailAddress ?? this.emailAddress,
      );

  /// TDLib object type
  static const String defaultObjectId = 'richTextEmailAddress';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextSubscript** *(richTextSubscript)* - child of RichText
///
/// A subscript rich text.
///
/// * [text]: Text.
final class RichTextSubscript extends RichText {
  /// **RichTextSubscript** *(richTextSubscript)* - child of RichText
  ///
  /// A subscript rich text.
  ///
  /// * [text]: Text.
  const RichTextSubscript({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextSubscript.fromJson(Map<String, dynamic> json) =>
      RichTextSubscript(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextSubscript copyWith({RichText? text}) =>
      RichTextSubscript(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextSubscript';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextSuperscript** *(richTextSuperscript)* - child of RichText
///
/// A superscript rich text.
///
/// * [text]: Text.
final class RichTextSuperscript extends RichText {
  /// **RichTextSuperscript** *(richTextSuperscript)* - child of RichText
  ///
  /// A superscript rich text.
  ///
  /// * [text]: Text.
  const RichTextSuperscript({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextSuperscript.fromJson(Map<String, dynamic> json) =>
      RichTextSuperscript(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextSuperscript copyWith({RichText? text}) =>
      RichTextSuperscript(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextSuperscript';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextMarked** *(richTextMarked)* - child of RichText
///
/// A marked rich text.
///
/// * [text]: Text.
final class RichTextMarked extends RichText {
  /// **RichTextMarked** *(richTextMarked)* - child of RichText
  ///
  /// A marked rich text.
  ///
  /// * [text]: Text.
  const RichTextMarked({required this.text});

  /// Text
  final RichText text;

  /// Parse from a json
  factory RichTextMarked.fromJson(Map<String, dynamic> json) =>
      RichTextMarked(text: RichText.fromJson(json['text']));

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "text": text.toJson()};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  @override
  RichTextMarked copyWith({RichText? text}) =>
      RichTextMarked(text: text ?? this.text);

  /// TDLib object type
  static const String defaultObjectId = 'richTextMarked';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextPhoneNumber** *(richTextPhoneNumber)* - child of RichText
///
/// A rich text phone number.
///
/// * [text]: Text.
/// * [phoneNumber]: Phone number.
final class RichTextPhoneNumber extends RichText {
  /// **RichTextPhoneNumber** *(richTextPhoneNumber)* - child of RichText
  ///
  /// A rich text phone number.
  ///
  /// * [text]: Text.
  /// * [phoneNumber]: Phone number.
  const RichTextPhoneNumber({required this.text, required this.phoneNumber});

  /// Text
  final RichText text;

  /// Phone number
  final String phoneNumber;

  /// Parse from a json
  factory RichTextPhoneNumber.fromJson(Map<String, dynamic> json) =>
      RichTextPhoneNumber(
        text: RichText.fromJson(json['text']),
        phoneNumber: json['phone_number'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "phone_number": phoneNumber,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text
  /// * [phone_number]: Phone number
  @override
  RichTextPhoneNumber copyWith({RichText? text, String? phoneNumber}) =>
      RichTextPhoneNumber(
        text: text ?? this.text,
        phoneNumber: phoneNumber ?? this.phoneNumber,
      );

  /// TDLib object type
  static const String defaultObjectId = 'richTextPhoneNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextIcon** *(richTextIcon)* - child of RichText
///
/// A small image inside the text.
///
/// * [document]: The image represented as a document. The image can be in GIF, JPEG or PNG format.
/// * [width]: Width of a bounding box in which the image must be shown; 0 if unknown.
/// * [height]: Height of a bounding box in which the image must be shown; 0 if unknown.
final class RichTextIcon extends RichText {
  /// **RichTextIcon** *(richTextIcon)* - child of RichText
  ///
  /// A small image inside the text.
  ///
  /// * [document]: The image represented as a document. The image can be in GIF, JPEG or PNG format.
  /// * [width]: Width of a bounding box in which the image must be shown; 0 if unknown.
  /// * [height]: Height of a bounding box in which the image must be shown; 0 if unknown.
  const RichTextIcon({
    required this.document,
    required this.width,
    required this.height,
  });

  /// The image represented as a document. The image can be in GIF, JPEG or PNG format
  final Document document;

  /// Width of a bounding box in which the image must be shown; 0 if unknown
  final int width;

  /// Height of a bounding box in which the image must be shown; 0 if unknown
  final int height;

  /// Parse from a json
  factory RichTextIcon.fromJson(Map<String, dynamic> json) => RichTextIcon(
    document: Document.fromJson(json['document']),
    width: json['width'],
    height: json['height'],
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "document": document.toJson(),
      "width": width,
      "height": height,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [document]: The image represented as a document. The image can be in GIF, JPEG or PNG format
  /// * [width]: Width of a bounding box in which the image must be shown; 0 if unknown
  /// * [height]: Height of a bounding box in which the image must be shown; 0 if unknown
  @override
  RichTextIcon copyWith({Document? document, int? width, int? height}) =>
      RichTextIcon(
        document: document ?? this.document,
        width: width ?? this.width,
        height: height ?? this.height,
      );

  /// TDLib object type
  static const String defaultObjectId = 'richTextIcon';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextReference** *(richTextReference)* - child of RichText
///
/// A reference to a richTexts object on the same page.
///
/// * [text]: The text.
/// * [anchorName]: The name of a richTextAnchor object, which is the first element of the target richTexts object.
/// * [url]: An HTTP URL, opening the reference.
final class RichTextReference extends RichText {
  /// **RichTextReference** *(richTextReference)* - child of RichText
  ///
  /// A reference to a richTexts object on the same page.
  ///
  /// * [text]: The text.
  /// * [anchorName]: The name of a richTextAnchor object, which is the first element of the target richTexts object.
  /// * [url]: An HTTP URL, opening the reference.
  const RichTextReference({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// The text
  final RichText text;

  /// The name of a richTextAnchor object, which is the first element of the target richTexts object
  final String anchorName;

  /// An HTTP URL, opening the reference
  final String url;

  /// Parse from a json
  factory RichTextReference.fromJson(Map<String, dynamic> json) =>
      RichTextReference(
        text: RichText.fromJson(json['text']),
        anchorName: json['anchor_name'],
        url: json['url'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "anchor_name": anchorName,
      "url": url,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: The text
  /// * [anchor_name]: The name of a richTextAnchor object, which is the first element of the target richTexts object
  /// * [url]: An HTTP URL, opening the reference
  @override
  RichTextReference copyWith({
    RichText? text,
    String? anchorName,
    String? url,
  }) => RichTextReference(
    text: text ?? this.text,
    anchorName: anchorName ?? this.anchorName,
    url: url ?? this.url,
  );

  /// TDLib object type
  static const String defaultObjectId = 'richTextReference';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextAnchor** *(richTextAnchor)* - child of RichText
///
/// An anchor.
///
/// * [name]: Anchor name.
final class RichTextAnchor extends RichText {
  /// **RichTextAnchor** *(richTextAnchor)* - child of RichText
  ///
  /// An anchor.
  ///
  /// * [name]: Anchor name.
  const RichTextAnchor({required this.name});

  /// Anchor name
  final String name;

  /// Parse from a json
  factory RichTextAnchor.fromJson(Map<String, dynamic> json) =>
      RichTextAnchor(name: json['name']);

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {"@type": defaultObjectId, "name": name};
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Anchor name
  @override
  RichTextAnchor copyWith({String? name}) =>
      RichTextAnchor(name: name ?? this.name);

  /// TDLib object type
  static const String defaultObjectId = 'richTextAnchor';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTextAnchorLink** *(richTextAnchorLink)* - child of RichText
///
/// A link to an anchor on the same page.
///
/// * [text]: The link text.
/// * [anchorName]: The anchor name. If the name is empty, the link must bring back to top.
/// * [url]: An HTTP URL, opening the anchor.
final class RichTextAnchorLink extends RichText {
  /// **RichTextAnchorLink** *(richTextAnchorLink)* - child of RichText
  ///
  /// A link to an anchor on the same page.
  ///
  /// * [text]: The link text.
  /// * [anchorName]: The anchor name. If the name is empty, the link must bring back to top.
  /// * [url]: An HTTP URL, opening the anchor.
  const RichTextAnchorLink({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// The link text
  final RichText text;

  /// The anchor name. If the name is empty, the link must bring back to top
  final String anchorName;

  /// An HTTP URL, opening the anchor
  final String url;

  /// Parse from a json
  factory RichTextAnchorLink.fromJson(Map<String, dynamic> json) =>
      RichTextAnchorLink(
        text: RichText.fromJson(json['text']),
        anchorName: json['anchor_name'],
        url: json['url'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "anchor_name": anchorName,
      "url": url,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: The link text
  /// * [anchor_name]: The anchor name. If the name is empty, the link must bring back to top
  /// * [url]: An HTTP URL, opening the anchor
  @override
  RichTextAnchorLink copyWith({
    RichText? text,
    String? anchorName,
    String? url,
  }) => RichTextAnchorLink(
    text: text ?? this.text,
    anchorName: anchorName ?? this.anchorName,
    url: url ?? this.url,
  );

  /// TDLib object type
  static const String defaultObjectId = 'richTextAnchorLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **RichTexts** *(richTexts)* - child of RichText
///
/// A concatenation of rich texts.
///
/// * [texts]: Texts.
final class RichTexts extends RichText {
  /// **RichTexts** *(richTexts)* - child of RichText
  ///
  /// A concatenation of rich texts.
  ///
  /// * [texts]: Texts.
  const RichTexts({required this.texts});

  /// Texts
  final List<RichText> texts;

  /// Parse from a json
  factory RichTexts.fromJson(Map<String, dynamic> json) => RichTexts(
    texts: List<RichText>.from(
      (json['texts'] ?? []).map((item) => RichText.fromJson(item)).toList(),
    ),
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "texts": texts.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [texts]: Texts
  @override
  RichTexts copyWith({List<RichText>? texts}) =>
      RichTexts(texts: texts ?? this.texts);

  /// TDLib object type
  static const String defaultObjectId = 'richTexts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
