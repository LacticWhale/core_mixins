import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyJsonCodec with JsonCodecMixin implements JsonCodec { 
///   // Must override 
///   @override 
///   JsonCodec get jsonCodec;
///   ...
/// }
/// ```
mixin JsonCodecMixin implements JsonCodec {
	@protected
	JsonCodec get jsonCodec;

	@override
	dynamic decode(String source, {Object? reviver(Object? key, Object? value)?}) => jsonCodec.decode(source, reviver: reviver);

	@override
	String encode(Object? value, {Object? toEncodable(dynamic object)?}) => jsonCodec.encode(value, toEncodable: toEncodable);

	@override
	JsonEncoder get encoder => jsonCodec.encoder;

	@override
	JsonDecoder get decoder => jsonCodec.decoder;

}
