import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHtmlEscapeMode with HtmlEscapeModeMixin implements HtmlEscapeMode { 
///   // Must override 
///   @override 
///   HtmlEscapeMode get htmlEscapeMode;
///   ...
/// }
/// ```
mixin HtmlEscapeModeMixin implements HtmlEscapeMode {
	@protected
	HtmlEscapeMode get htmlEscapeMode;

	@override
	bool get escapeLtGt => htmlEscapeMode.escapeLtGt;

	@override
	bool get escapeQuot => htmlEscapeMode.escapeQuot;

	@override
	bool get escapeApos => htmlEscapeMode.escapeApos;

	@override
	bool get escapeSlash => htmlEscapeMode.escapeSlash;

	@override
	String toString() => htmlEscapeMode.toString();

}
