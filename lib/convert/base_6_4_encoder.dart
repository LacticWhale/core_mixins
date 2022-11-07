import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyBase64Encoder with Base64EncoderMixin implements Base64Encoder { 
///   // Must override 
///   @override 
///   Base64Encoder get base64Encoder;
///   ...
/// }
/// ```
mixin Base64EncoderMixin implements Base64Encoder {
	@protected
	Base64Encoder get base64Encoder;

	@override
	String convert(List<int> input) => base64Encoder.convert(input);

	@override
	ByteConversionSink startChunkedConversion(Sink<String> sink) => base64Encoder.startChunkedConversion(sink);

}
