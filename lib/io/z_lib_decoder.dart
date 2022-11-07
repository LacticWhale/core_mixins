import 'dart:io';
import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZLibDecoder with ZLibDecoderMixin implements ZLibDecoder { 
///   // Must override 
///   @override 
///   ZLibDecoder get zLibDecoder;
///   ...
/// }
/// ```
mixin ZLibDecoderMixin implements ZLibDecoder {
	@protected
	ZLibDecoder get zLibDecoder;

	@override
	int get windowBits => zLibDecoder.windowBits;

	@override
	List<int>? get dictionary => zLibDecoder.dictionary;

	@override
	bool get raw => zLibDecoder.raw;

	@override
	List<int> convert(List<int> bytes) => zLibDecoder.convert(bytes);

	@override
	ByteConversionSink startChunkedConversion(Sink<List<int>> sink) => zLibDecoder.startChunkedConversion(sink);

}
