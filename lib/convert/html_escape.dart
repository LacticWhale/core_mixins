import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHtmlEscape with HtmlEscapeMixin implements HtmlEscape { 
///   // Must override 
///   @override 
///   HtmlEscape get htmlEscape;
///   ...
/// }
/// ```
mixin HtmlEscapeMixin implements HtmlEscape {
	@protected
	HtmlEscape get htmlEscape;

	@override
	HtmlEscapeMode get mode => htmlEscape.mode;

	@override
	String convert(String text) => htmlEscape.convert(text);

	@override
	StringConversionSink startChunkedConversion(Sink<String> sink) => htmlEscape.startChunkedConversion(sink);

}
