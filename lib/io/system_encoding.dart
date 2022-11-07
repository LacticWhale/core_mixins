import 'dart:io';
import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MySystemEncoding with SystemEncodingMixin implements SystemEncoding { 
///   // Must override 
///   @override 
///   SystemEncoding get systemEncoding;
///   ...
/// }
/// ```
mixin SystemEncodingMixin implements SystemEncoding {
	@protected
	SystemEncoding get systemEncoding;

	@override
	String get name => systemEncoding.name;

	@override
	List<int> encode(String input) => systemEncoding.encode(input);

	@override
	String decode(List<int> encoded) => systemEncoding.decode(encoded);

	@override
	Converter<String, List<int>> get encoder => systemEncoding.encoder;

	@override
	Converter<List<int>, String> get decoder => systemEncoding.decoder;

}
