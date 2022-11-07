import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyJsonDecoder with JsonDecoderMixin implements JsonDecoder { 
///   // Must override 
///   @override 
///   JsonDecoder get jsonDecoder;
///   ...
/// }
/// ```
mixin JsonDecoderMixin implements JsonDecoder {
	@protected
	JsonDecoder get jsonDecoder;

	@override
	dynamic convert(String input) => jsonDecoder.convert(input);

	@override
	StringConversionSink startChunkedConversion(Sink<Object?> sink) => jsonDecoder.startChunkedConversion(sink);

	@override
	Stream<Object?> bind(Stream<String> stream) => jsonDecoder.bind(stream);

}
