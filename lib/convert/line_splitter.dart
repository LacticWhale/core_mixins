import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyLineSplitter with LineSplitterMixin implements LineSplitter { 
///   // Must override 
///   @override 
///   LineSplitter get lineSplitter;
///   ...
/// }
/// ```
mixin LineSplitterMixin implements LineSplitter {
	@protected
	LineSplitter get lineSplitter;

	@override
	List<String> convert(String data) => lineSplitter.convert(data);

	@override
	StringConversionSink startChunkedConversion(Sink<String> sink) => lineSplitter.startChunkedConversion(sink);

	@override
	Stream<String> bind(Stream<String> stream) => lineSplitter.bind(stream);

}
