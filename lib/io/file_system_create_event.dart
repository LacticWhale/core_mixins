import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemCreateEvent with FileSystemCreateEventMixin implements FileSystemCreateEvent { 
///   // Must override 
///   @override 
///   FileSystemCreateEvent get fileSystemCreateEvent;
///   ...
/// }
/// ```
mixin FileSystemCreateEventMixin implements FileSystemCreateEvent {
	@protected
	FileSystemCreateEvent get fileSystemCreateEvent;

	@override
	String toString() => fileSystemCreateEvent.toString();

}
