import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStringConversionSinkMixin with StringConversionSinkMixinMixin implements StringConversionSinkMixin { 
///   // Must override 
///   @override 
///   StringConversionSinkMixin get stringConversionSinkMixin;
///   ...
/// }
/// ```
mixin StringConversionSinkMixinMixin implements StringConversionSinkMixin {
	@protected
	StringConversionSinkMixin get stringConversionSinkMixin;

	@override
	void addSlice(String str, int start, int end, bool isLast) => stringConversionSinkMixin.addSlice(str, start, end, isLast);

	@override
	void close() => stringConversionSinkMixin.close();

	@override
	void add(String str) => stringConversionSinkMixin.add(str);

	@override
	ByteConversionSink asUtf8Sink(bool allowMalformed) => stringConversionSinkMixin.asUtf8Sink(allowMalformed);

	@override
	ClosableStringSink asStringSink() => stringConversionSinkMixin.asStringSink();

}
