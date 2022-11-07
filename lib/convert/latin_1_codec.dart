import 'dart:convert';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyLatin1Codec with Latin1CodecMixin implements Latin1Codec { 
///   // Must override 
///   @override 
///   Latin1Codec get latin1Codec;
///   ...
/// }
/// ```
mixin Latin1CodecMixin implements Latin1Codec {
	@protected
	Latin1Codec get latin1Codec;

	@override
	String get name => latin1Codec.name;

	@override
	Uint8List encode(String source) => latin1Codec.encode(source);

	@override
	String decode(List<int> bytes, {bool? allowInvalid}) => latin1Codec.decode(bytes, allowInvalid: allowInvalid);

	@override
	Latin1Encoder get encoder => latin1Codec.encoder;

	@override
	Latin1Decoder get decoder => latin1Codec.decoder;

}
