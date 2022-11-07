import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyContentType with ContentTypeMixin implements ContentType { 
///   // Must override 
///   @override 
///   ContentType get contentType;
///   ...
/// }
/// ```
mixin ContentTypeMixin implements ContentType {
	@protected
	ContentType get contentType;

	@override
	String get mimeType => contentType.mimeType;

	@override
	String get primaryType => contentType.primaryType;

	@override
	String get subType => contentType.subType;

	@override
	String? get charset => contentType.charset;

}
