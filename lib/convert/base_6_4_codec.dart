import 'dart:convert';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyBase64Codec with Base64CodecMixin implements Base64Codec { 
///   // Must override 
///   @override 
///   Base64Codec get base64Codec;
///   ...
/// }
/// ```
mixin Base64CodecMixin implements Base64Codec {
	@protected
	Base64Codec get base64Codec;

	@override
	Base64Encoder get encoder => base64Codec.encoder;

	@override
	Base64Decoder get decoder => base64Codec.decoder;

	@override
	Uint8List decode(String encoded) => base64Codec.decode(encoded);

	@override
	String normalize(String source, [int start = 0, int? end]) => base64Codec.normalize(source, start, end);

}
