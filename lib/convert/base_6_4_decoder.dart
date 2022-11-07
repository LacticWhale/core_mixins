import 'dart:convert';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyBase64Decoder with Base64DecoderMixin implements Base64Decoder { 
///   // Must override 
///   @override 
///   Base64Decoder get base64Decoder;
///   ...
/// }
/// ```
mixin Base64DecoderMixin implements Base64Decoder {
	@protected
	Base64Decoder get base64Decoder;

	@override
	Uint8List convert(String input, [int start = 0, int? end]) => base64Decoder.convert(input, start, end);

	@override
	StringConversionSink startChunkedConversion(Sink<List<int>> sink) => base64Decoder.startChunkedConversion(sink);

}
