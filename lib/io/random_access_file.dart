import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRandomAccessFile with RandomAccessFileMixin implements RandomAccessFile { 
///   // Must override 
///   @override 
///   RandomAccessFile get randomAccessFile;
///   ...
/// }
/// ```
mixin RandomAccessFileMixin implements RandomAccessFile {
	@protected
	RandomAccessFile get randomAccessFile;

	@override
	Future<void> close() => randomAccessFile.close();

	@override
	void closeSync() => randomAccessFile.closeSync();

	@override
	Future<int> readByte() => randomAccessFile.readByte();

	@override
	int readByteSync() => randomAccessFile.readByteSync();

	@override
	Future<Uint8List> read(int count) => randomAccessFile.read(count);

	@override
	Uint8List readSync(int count) => randomAccessFile.readSync(count);

	@override
	Future<int> readInto(List<int> buffer, [int start = 0, int? end]) => randomAccessFile.readInto(buffer, start, end);

	@override
	int readIntoSync(List<int> buffer, [int start = 0, int? end]) => randomAccessFile.readIntoSync(buffer, start, end);

	@override
	Future<RandomAccessFile> writeByte(int value) => randomAccessFile.writeByte(value);

	@override
	int writeByteSync(int value) => randomAccessFile.writeByteSync(value);

	@override
	Future<RandomAccessFile> writeFrom(List<int> buffer, [int start = 0, int? end]) => randomAccessFile.writeFrom(buffer, start, end);

	@override
	void writeFromSync(List<int> buffer, [int start = 0, int? end]) => randomAccessFile.writeFromSync(buffer, start, end);

	@override
	Future<RandomAccessFile> writeString(String string, {Encoding encoding = utf8}) => randomAccessFile.writeString(string, encoding: encoding);

	@override
	void writeStringSync(String string, {Encoding encoding = utf8}) => randomAccessFile.writeStringSync(string, encoding: encoding);

	@override
	Future<int> position() => randomAccessFile.position();

	@override
	int positionSync() => randomAccessFile.positionSync();

	@override
	Future<RandomAccessFile> setPosition(int position) => randomAccessFile.setPosition(position);

	@override
	void setPositionSync(int position) => randomAccessFile.setPositionSync(position);

	@override
	Future<RandomAccessFile> truncate(int length) => randomAccessFile.truncate(length);

	@override
	void truncateSync(int length) => randomAccessFile.truncateSync(length);

	@override
	Future<int> length() => randomAccessFile.length();

	@override
	int lengthSync() => randomAccessFile.lengthSync();

	@override
	Future<RandomAccessFile> flush() => randomAccessFile.flush();

	@override
	void flushSync() => randomAccessFile.flushSync();

	@override
	Future<RandomAccessFile> lock([FileLock mode = FileLock.exclusive, int start = 0, int end = -1]) => randomAccessFile.lock(mode, start, end);

	@override
	void lockSync([FileLock mode = FileLock.exclusive, int start = 0, int end = -1]) => randomAccessFile.lockSync(mode, start, end);

	@override
	Future<RandomAccessFile> unlock([int start = 0, int end = -1]) => randomAccessFile.unlock(start, end);

	@override
	void unlockSync([int start = 0, int end = -1]) => randomAccessFile.unlockSync(start, end);

	@override
	String toString() => randomAccessFile.toString();

	@override
	String get path => randomAccessFile.path;

}
