part of '../tdapi.dart';

/// **Thumbnail** *(thumbnail)* - basic class
///
/// Represents a thumbnail.
///
/// * [format]: Thumbnail format.
/// * [width]: Thumbnail width.
/// * [height]: Thumbnail height.
/// * [file]: The thumbnail.
final class Thumbnail extends TdObject {
  /// **Thumbnail** *(thumbnail)* - basic class
  ///
  /// Represents a thumbnail.
  ///
  /// * [format]: Thumbnail format.
  /// * [width]: Thumbnail width.
  /// * [height]: Thumbnail height.
  /// * [file]: The thumbnail.
  const Thumbnail({
    required this.format,
    required this.width,
    required this.height,
    required this.file,
  });

  /// Thumbnail format
  final ThumbnailFormat format;

  /// Thumbnail width
  final int width;

  /// Thumbnail height
  final int height;

  /// The thumbnail
  final File file;

  /// Parse from a json
  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
    format: ThumbnailFormat.fromJson(json['format']),
    width: json['width'],
    height: json['height'],
    file: File.fromJson(json['file']),
  );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "format": format.toJson(),
      "width": width,
      "height": height,
      "file": file.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [format]: Thumbnail format
  /// * [width]: Thumbnail width
  /// * [height]: Thumbnail height
  /// * [file]: The thumbnail
  Thumbnail copyWith({
    ThumbnailFormat? format,
    int? width,
    int? height,
    File? file,
  }) => Thumbnail(
    format: format ?? this.format,
    width: width ?? this.width,
    height: height ?? this.height,
    file: file ?? this.file,
  );

  /// TDLib object type
  static const String defaultObjectId = 'thumbnail';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
