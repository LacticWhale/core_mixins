import 'dart:convert';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyAsciiCodec with AsciiCodecMixin implements AsciiCodec { 
///   // Must override 
///   @override 
///   AsciiCodec get asciiCodec;
///   ...
/// }
/// ```
mixin AsciiCodecMixin implements AsciiCodec {
	@protected
	AsciiCodec get asciiCodec;

	@override
	String get name => asciiCodec.name;

	@override
	Uint8List encode(String source) => asciiCodec.encode(source);

	@override
	String decode(List<int> bytes, {bool? allowInvalid}) => asciiCodec.decode(bytes, allowInvalid: allowInvalid);

	@override
	AsciiEncoder get encoder => asciiCodec.encoder;

	@override
	AsciiDecoder get decoder => asciiCodec.decoder;

}
