import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyJsonUtf8Encoder with JsonUtf8EncoderMixin implements JsonUtf8Encoder { 
///   // Must override 
///   @override 
///   JsonUtf8Encoder get jsonUtf8Encoder;
///   ...
/// }
/// ```
mixin JsonUtf8EncoderMixin implements JsonUtf8Encoder {
	@protected
	JsonUtf8Encoder get jsonUtf8Encoder;

	@override
	List<int> convert(Object? object) => jsonUtf8Encoder.convert(object);

	@override
	ChunkedConversionSink<Object?> startChunkedConversion(Sink<List<int>> sink) => jsonUtf8Encoder.startChunkedConversion(sink);

	@override
	Stream<List<int>> bind(Stream<Object?> stream) => jsonUtf8Encoder.bind(stream);

}
