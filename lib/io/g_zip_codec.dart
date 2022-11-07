import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyGZipCodec with GZipCodecMixin implements GZipCodec { 
///   // Must override 
///   @override 
///   GZipCodec get gZipCodec;
///   ...
/// }
/// ```
mixin GZipCodecMixin implements GZipCodec {
	@protected
	GZipCodec get gZipCodec;

	@override
	bool get gzip => gZipCodec.gzip;

	@override
	int get level => gZipCodec.level;

	@override
	int get memLevel => gZipCodec.memLevel;

	@override
	int get strategy => gZipCodec.strategy;

	@override
	int get windowBits => gZipCodec.windowBits;

	@override
	List<int>? get dictionary => gZipCodec.dictionary;

	@override
	bool get raw => gZipCodec.raw;

	@override
	ZLibEncoder get encoder => gZipCodec.encoder;

	@override
	ZLibDecoder get decoder => gZipCodec.decoder;

}
