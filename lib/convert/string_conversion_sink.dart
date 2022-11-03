import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStringConversionSink with StringConversionSinkMixin implements StringConversionSink { 
///   // Must override 
///   @override 
///   StringConversionSink get stringConversionSink;
///   ...
/// }
/// ```
mixin StringConversionSinkMixin implements StringConversionSink {
	@protected
	StringConversionSink get stringConversionSink;

	@override
	void addSlice(String chunk, int start, int end, bool isLast) => stringConversionSink.addSlice(chunk, start, end, isLast);

	@override
	ByteConversionSink asUtf8Sink(bool allowMalformed) => stringConversionSink.asUtf8Sink(allowMalformed);

	@override
	ClosableStringSink asStringSink() => stringConversionSink.asStringSink();

}
