import 'dart:io';
import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZLibEncoder with ZLibEncoderMixin implements ZLibEncoder { 
///   // Must override 
///   @override 
///   ZLibEncoder get zLibEncoder;
///   ...
/// }
/// ```
mixin ZLibEncoderMixin implements ZLibEncoder {
	@protected
	ZLibEncoder get zLibEncoder;

	@override
	bool get gzip => zLibEncoder.gzip;

	@override
	int get level => zLibEncoder.level;

	@override
	int get memLevel => zLibEncoder.memLevel;

	@override
	int get strategy => zLibEncoder.strategy;

	@override
	int get windowBits => zLibEncoder.windowBits;

	@override
	List<int>? get dictionary => zLibEncoder.dictionary;

	@override
	bool get raw => zLibEncoder.raw;

	@override
	List<int> convert(List<int> bytes) => zLibEncoder.convert(bytes);

	@override
	ByteConversionSink startChunkedConversion(Sink<List<int>> sink) => zLibEncoder.startChunkedConversion(sink);

}
