import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyLatin1Decoder with Latin1DecoderMixin implements Latin1Decoder { 
///   // Must override 
///   @override 
///   Latin1Decoder get latin1Decoder;
///   ...
/// }
/// ```
mixin Latin1DecoderMixin implements Latin1Decoder {
	@protected
	Latin1Decoder get latin1Decoder;

	@override
	ByteConversionSink startChunkedConversion(Sink<String> sink) => latin1Decoder.startChunkedConversion(sink);

}
