import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZLibCodec with ZLibCodecMixin implements ZLibCodec { 
///   // Must override 
///   @override 
///   ZLibCodec get zLibCodec;
///   ...
/// }
/// ```
mixin ZLibCodecMixin implements ZLibCodec {
	@protected
	ZLibCodec get zLibCodec;

	@override
	bool get gzip => zLibCodec.gzip;

	@override
	int get level => zLibCodec.level;

	@override
	int get memLevel => zLibCodec.memLevel;

	@override
	int get strategy => zLibCodec.strategy;

	@override
	int get windowBits => zLibCodec.windowBits;

	@override
	bool get raw => zLibCodec.raw;

	@override
	List<int>? get dictionary => zLibCodec.dictionary;

	@override
	ZLibEncoder get encoder => zLibCodec.encoder;

	@override
	ZLibDecoder get decoder => zLibCodec.decoder;

}
