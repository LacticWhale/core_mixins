import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyUtf8Codec with Utf8CodecMixin implements Utf8Codec { 
///   // Must override 
///   @override 
///   Utf8Codec get utf8Codec;
///   ...
/// }
/// ```
mixin Utf8CodecMixin implements Utf8Codec {
	@protected
	Utf8Codec get utf8Codec;

	@override
	String get name => utf8Codec.name;

	@override
	String decode(List<int> codeUnits, {bool? allowMalformed}) => utf8Codec.decode(codeUnits, allowMalformed: allowMalformed);

	@override
	Utf8Encoder get encoder => utf8Codec.encoder;

	@override
	Utf8Decoder get decoder => utf8Codec.decoder;

}
