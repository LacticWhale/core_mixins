import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyChunkedConversionSink with ChunkedConversionSinkMixin<T> implements ChunkedConversionSink<T> { 
///   // Must override 
///   @override 
///   ChunkedConversionSink get chunkedConversionSink;
///   ...
/// }
/// ```
mixin ChunkedConversionSinkMixin<T> implements ChunkedConversionSink<T> {
	@protected
	ChunkedConversionSink<T> get chunkedConversionSink;

	@override
	void add(T chunk) => chunkedConversionSink.add(chunk);

	@override
	void close() => chunkedConversionSink.close();

}
