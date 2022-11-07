import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyUtf8Decoder with Utf8DecoderMixin implements Utf8Decoder { 
///   // Must override 
///   @override 
///   Utf8Decoder get utf8Decoder;
///   ...
/// }
/// ```
mixin Utf8DecoderMixin implements Utf8Decoder {
	@protected
	Utf8Decoder get utf8Decoder;

	@override
	String convert(List<int> codeUnits, [int start = 0, int? end]) => utf8Decoder.convert(codeUnits, start, end);

	@override
	ByteConversionSink startChunkedConversion(Sink<String> sink) => utf8Decoder.startChunkedConversion(sink);

	@override
	Stream<String> bind(Stream<List<int>> stream) => utf8Decoder.bind(stream);

	@override
	Converter<List<int>, T> fuse<T>(Converter<String, T> next) => utf8Decoder.fuse(next);

}
