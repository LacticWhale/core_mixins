import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyByteConversionSink with ByteConversionSinkMixin implements ByteConversionSink { 
///   // Must override 
///   @override 
///   ByteConversionSink get byteConversionSink;
///   ...
/// }
/// ```
mixin ByteConversionSinkMixin implements ByteConversionSink {
	@protected
	ByteConversionSink get byteConversionSink;

	@override
	void addSlice(List<int> chunk, int start, int end, bool isLast) => byteConversionSink.addSlice(chunk, start, end, isLast);

}
