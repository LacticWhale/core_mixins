import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemEntity with FileSystemEntityMixin implements FileSystemEntity { 
///   // Must override 
///   @override 
///   FileSystemEntity get fileSystemEntity;
///   ...
/// }
/// ```
mixin FileSystemEntityMixin implements FileSystemEntity {
	@protected
	FileSystemEntity get fileSystemEntity;

	@override
	String get path => fileSystemEntity.path;

	@override
	Uri get uri => fileSystemEntity.uri;

	@override
	Future<bool> exists() => fileSystemEntity.exists();

	@override
	bool existsSync() => fileSystemEntity.existsSync();

	@override
	Future<FileSystemEntity> rename(String newPath) => fileSystemEntity.rename(newPath);

	@override
	FileSystemEntity renameSync(String newPath) => fileSystemEntity.renameSync(newPath);

	@override
	Future<String> resolveSymbolicLinks() => fileSystemEntity.resolveSymbolicLinks();

	@override
	String resolveSymbolicLinksSync() => fileSystemEntity.resolveSymbolicLinksSync();

	@override
	Future<FileStat> stat() => fileSystemEntity.stat();

	@override
	FileStat statSync() => fileSystemEntity.statSync();

	@override
	Future<FileSystemEntity> delete({bool recursive = false}) => fileSystemEntity.delete(recursive: recursive);

	@override
	void deleteSync({bool recursive = false}) => fileSystemEntity.deleteSync(recursive: recursive);

	@override
	Stream<FileSystemEvent> watch({int events = FileSystemEvent.all, bool recursive = false}) => fileSystemEntity.watch(events: events, recursive: recursive);

	@override
	bool get isAbsolute => fileSystemEntity.isAbsolute;

	@override
	FileSystemEntity get absolute => fileSystemEntity.absolute;

	@override
	Directory get parent => fileSystemEntity.parent;

}
