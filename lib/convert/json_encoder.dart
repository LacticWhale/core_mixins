import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyJsonEncoder with JsonEncoderMixin implements JsonEncoder { 
///   // Must override 
///   @override 
///   JsonEncoder get jsonEncoder;
///   ...
/// }
/// ```
mixin JsonEncoderMixin implements JsonEncoder {
	@protected
	JsonEncoder get jsonEncoder;

	@override
	String? get indent => jsonEncoder.indent;

	@override
	String convert(Object? object) => jsonEncoder.convert(object);

	@override
	ChunkedConversionSink<Object?> startChunkedConversion(Sink<String> sink) => jsonEncoder.startChunkedConversion(sink);

	@override
	Stream<String> bind(Stream<Object?> stream) => jsonEncoder.bind(stream);

	@override
	Converter<Object?, T> fuse<T>(Converter<String, T> other) => jsonEncoder.fuse(other);

}
