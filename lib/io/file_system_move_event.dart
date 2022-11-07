import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemMoveEvent with FileSystemMoveEventMixin implements FileSystemMoveEvent { 
///   // Must override 
///   @override 
///   FileSystemMoveEvent get fileSystemMoveEvent;
///   ...
/// }
/// ```
mixin FileSystemMoveEventMixin implements FileSystemMoveEvent {
	@protected
	FileSystemMoveEvent get fileSystemMoveEvent;

	@override
	String? get destination => fileSystemMoveEvent.destination;

	@override
	String toString() => fileSystemMoveEvent.toString();

}
