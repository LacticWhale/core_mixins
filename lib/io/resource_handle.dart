import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyResourceHandle with ResourceHandleMixin implements ResourceHandle { 
///   // Must override 
///   @override 
///   ResourceHandle get resourceHandle;
///   ...
/// }
/// ```
mixin ResourceHandleMixin implements ResourceHandle {
	@protected
	ResourceHandle get resourceHandle;

	@override
	RandomAccessFile toFile() => resourceHandle.toFile();

	@override
	Socket toSocket() => resourceHandle.toSocket();

	@override
	RawSocket toRawSocket() => resourceHandle.toRawSocket();

	@override
	RawDatagramSocket toRawDatagramSocket() => resourceHandle.toRawDatagramSocket();

}
