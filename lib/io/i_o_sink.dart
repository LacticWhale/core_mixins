import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyIOSink with IOSinkMixin implements IOSink { 
///   // Must override 
///   @override 
///   IOSink get iOSink;
///   ...
/// }
/// ```
mixin IOSinkMixin implements IOSink {
	@protected
	IOSink get iOSink;

	@override
	Encoding get encoding => iOSink.encoding;

	@override
	set encoding(Encoding value) => iOSink.encoding = value;

	@override
	void add(List<int> data) => iOSink.add(data);

	@override
	void write(Object? object) => iOSink.write(object);

	@override
	void writeAll(Iterable objects, [String separator = ""]) => iOSink.writeAll(objects, separator);

	@override
	void writeln([Object? object = ""]) => iOSink.writeln(object);

	@override
	void writeCharCode(int charCode) => iOSink.writeCharCode(charCode);

	@override
	void addError(error, [StackTrace? stackTrace]) => iOSink.addError(error, stackTrace);

	@override
	Future addStream(Stream<List<int>> stream) => iOSink.addStream(stream);

	@override
	Future flush() => iOSink.flush();

	@override
	Future close() => iOSink.close();

	@override
	Future get done => iOSink.done;

}
