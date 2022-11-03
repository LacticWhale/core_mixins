import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFile with FileMixin implements File { 
///   // Must override 
///   @override 
///   File get file;
///   ...
/// }
/// ```
mixin FileMixin implements File {
	@protected
	File get file;

	@override
	Future<File> create({bool recursive = false}) => file.create(recursive: recursive);

	@override
	void createSync({bool recursive = false}) => file.createSync(recursive: recursive);

	@override
	Future<File> rename(String newPath) => file.rename(newPath);

	@override
	File renameSync(String newPath) => file.renameSync(newPath);

	@override
	Future<File> copy(String newPath) => file.copy(newPath);

	@override
	File copySync(String newPath) => file.copySync(newPath);

	@override
	Future<int> length() => file.length();

	@override
	int lengthSync() => file.lengthSync();

	@override
	File get absolute => file.absolute;

	@override
	Future<DateTime> lastAccessed() => file.lastAccessed();

	@override
	DateTime lastAccessedSync() => file.lastAccessedSync();

	@override
	Future setLastAccessed(DateTime time) => file.setLastAccessed(time);

	@override
	void setLastAccessedSync(DateTime time) => file.setLastAccessedSync(time);

	@override
	Future<DateTime> lastModified() => file.lastModified();

	@override
	DateTime lastModifiedSync() => file.lastModifiedSync();

	@override
	Future setLastModified(DateTime time) => file.setLastModified(time);

	@override
	void setLastModifiedSync(DateTime time) => file.setLastModifiedSync(time);

	@override
	Future<RandomAccessFile> open({FileMode mode = FileMode.read}) => file.open(mode: mode);

	@override
	RandomAccessFile openSync({FileMode mode = FileMode.read}) => file.openSync(mode: mode);

	@override
	Stream<List<int>> openRead([int? start, int? end]) => file.openRead(start, end);

	@override
	IOSink openWrite({FileMode mode = FileMode.write, Encoding encoding = utf8}) => file.openWrite(mode: mode, encoding: encoding);

	@override
	Future<Uint8List> readAsBytes() => file.readAsBytes();

	@override
	Uint8List readAsBytesSync() => file.readAsBytesSync();

	@override
	Future<String> readAsString({Encoding encoding = utf8}) => file.readAsString(encoding: encoding);

	@override
	String readAsStringSync({Encoding encoding = utf8}) => file.readAsStringSync(encoding: encoding);

	@override
	Future<List<String>> readAsLines({Encoding encoding = utf8}) => file.readAsLines(encoding: encoding);

	@override
	List<String> readAsLinesSync({Encoding encoding = utf8}) => file.readAsLinesSync(encoding: encoding);

	@override
	Future<File> writeAsBytes(List<int> bytes, {FileMode mode = FileMode.write, bool flush = false}) => file.writeAsBytes(bytes, mode: mode, flush: flush);

	@override
	void writeAsBytesSync(List<int> bytes, {FileMode mode = FileMode.write, bool flush = false}) => file.writeAsBytesSync(bytes, mode: mode, flush: flush);

	@override
	Future<File> writeAsString(String contents, {FileMode mode = FileMode.write, Encoding encoding = utf8, bool flush = false}) => file.writeAsString(contents, mode: mode, encoding: encoding, flush: flush);

	@override
	void writeAsStringSync(String contents, {FileMode mode = FileMode.write, Encoding encoding = utf8, bool flush = false}) => file.writeAsStringSync(contents, mode: mode, encoding: encoding, flush: flush);

	@override
	String get path => file.path;

}
