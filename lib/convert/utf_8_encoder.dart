import 'dart:convert';
import 'dart:typed_data';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyUtf8Encoder with Utf8EncoderMixin implements Utf8Encoder { 
///   // Must override 
///   @override 
///   Utf8Encoder get utf8Encoder;
///   ...
/// }
/// ```
mixin Utf8EncoderMixin implements Utf8Encoder {
	@protected
	Utf8Encoder get utf8Encoder;

	@override
	Uint8List convert(String string, [int start = 0, int? end]) => utf8Encoder.convert(string, start, end);

	@override
	StringConversionSink startChunkedConversion(Sink<List<int>> sink) => utf8Encoder.startChunkedConversion(sink);

	@override
	Stream<List<int>> bind(Stream<String> stream) => utf8Encoder.bind(stream);

}
