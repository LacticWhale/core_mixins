import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemModifyEvent with FileSystemModifyEventMixin implements FileSystemModifyEvent { 
///   // Must override 
///   @override 
///   FileSystemModifyEvent get fileSystemModifyEvent;
///   ...
/// }
/// ```
mixin FileSystemModifyEventMixin implements FileSystemModifyEvent {
	@protected
	FileSystemModifyEvent get fileSystemModifyEvent;

	@override
	bool get contentChanged => fileSystemModifyEvent.contentChanged;

	@override
	String toString() => fileSystemModifyEvent.toString();

}
