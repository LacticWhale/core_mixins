import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyDirectory with DirectoryMixin implements Directory { 
///   // Must override 
///   @override 
///   Directory get directory;
///   ...
/// }
/// ```
mixin DirectoryMixin implements Directory {
	@protected
	Directory get directory;

	@override
	String get path => directory.path;

	@override
	Uri get uri => directory.uri;

	@override
	Future<Directory> create({bool recursive = false}) => directory.create(recursive: recursive);

	@override
	void createSync({bool recursive = false}) => directory.createSync(recursive: recursive);

	@override
	Future<Directory> createTemp([String? prefix]) => directory.createTemp(prefix);

	@override
	Directory createTempSync([String? prefix]) => directory.createTempSync(prefix);

	@override
	Future<String> resolveSymbolicLinks() => directory.resolveSymbolicLinks();

	@override
	String resolveSymbolicLinksSync() => directory.resolveSymbolicLinksSync();

	@override
	Future<Directory> rename(String newPath) => directory.rename(newPath);

	@override
	Directory renameSync(String newPath) => directory.renameSync(newPath);

	@override
	Directory get absolute => directory.absolute;

	@override
	Stream<FileSystemEntity> list({bool recursive = false, bool followLinks = true}) => directory.list(recursive: recursive, followLinks: followLinks);

	@override
	List<FileSystemEntity> listSync({bool recursive = false, bool followLinks = true}) => directory.listSync(recursive: recursive, followLinks: followLinks);

	@override
	String toString() => directory.toString();

}
