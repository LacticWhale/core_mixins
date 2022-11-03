import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyByteConversionSinkBase with ByteConversionSinkBaseMixin implements ByteConversionSinkBase { 
///   // Must override 
///   @override 
///   ByteConversionSinkBase get byteConversionSinkBase;
///   ...
/// }
/// ```
mixin ByteConversionSinkBaseMixin implements ByteConversionSinkBase {
	@protected
	ByteConversionSinkBase get byteConversionSinkBase;

	@override
	void add(List<int> chunk) => byteConversionSinkBase.add(chunk);

	@override
	void close() => byteConversionSinkBase.close();

	@override
	void addSlice(List<int> chunk, int start, int end, bool isLast) => byteConversionSinkBase.addSlice(chunk, start, end, isLast);

}
