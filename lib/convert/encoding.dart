import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyEncoding with EncodingMixin implements Encoding { 
///   // Must override 
///   @override 
///   Encoding get encoding;
///   ...
/// }
/// ```
mixin EncodingMixin implements Encoding {
	@protected
	Encoding get encoding;

	@override
	Converter<String, List<int>> get encoder => encoding.encoder;

	@override
	Converter<List<int>, String> get decoder => encoding.decoder;

	@override
	Future<String> decodeStream(Stream<List<int>> byteStream) => encoding.decodeStream(byteStream);

	@override
	String get name => encoding.name;

}
