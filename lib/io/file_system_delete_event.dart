import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemDeleteEvent with FileSystemDeleteEventMixin implements FileSystemDeleteEvent { 
///   // Must override 
///   @override 
///   FileSystemDeleteEvent get fileSystemDeleteEvent;
///   ...
/// }
/// ```
mixin FileSystemDeleteEventMixin implements FileSystemDeleteEvent {
	@protected
	FileSystemDeleteEvent get fileSystemDeleteEvent;

	@override
	String toString() => fileSystemDeleteEvent.toString();

}
