import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemEvent with FileSystemEventMixin implements FileSystemEvent { 
///   // Must override 
///   @override 
///   FileSystemEvent get fileSystemEvent;
///   ...
/// }
/// ```
mixin FileSystemEventMixin implements FileSystemEvent {
	@protected
	FileSystemEvent get fileSystemEvent;

	@override
	int get type => fileSystemEvent.type;

	@override
	String get path => fileSystemEvent.path;

	@override
	bool get isDirectory => fileSystemEvent.isDirectory;

}
