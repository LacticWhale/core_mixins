import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyAsciiDecoder with AsciiDecoderMixin implements AsciiDecoder { 
///   // Must override 
///   @override 
///   AsciiDecoder get asciiDecoder;
///   ...
/// }
/// ```
mixin AsciiDecoderMixin implements AsciiDecoder {
	@protected
	AsciiDecoder get asciiDecoder;

	@override
	ByteConversionSink startChunkedConversion(Sink<String> sink) => asciiDecoder.startChunkedConversion(sink);

}
