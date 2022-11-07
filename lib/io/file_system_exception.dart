import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemException with FileSystemExceptionMixin implements FileSystemException { 
///   // Must override 
///   @override 
///   FileSystemException get fileSystemException;
///   ...
/// }
/// ```
mixin FileSystemExceptionMixin implements FileSystemException {
	@protected
	FileSystemException get fileSystemException;

	@override
	String get message => fileSystemException.message;

	@override
	String? get path => fileSystemException.path;

	@override
	OSError? get osError => fileSystemException.osError;

	@override
	String toString() => fileSystemException.toString();

}
