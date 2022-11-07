import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileSystemEntityType with FileSystemEntityTypeMixin implements FileSystemEntityType { 
///   // Must override 
///   @override 
///   FileSystemEntityType get fileSystemEntityType;
///   ...
/// }
/// ```
mixin FileSystemEntityTypeMixin implements FileSystemEntityType {
	@protected
	FileSystemEntityType get fileSystemEntityType;

	@override
	String toString() => fileSystemEntityType.toString();

}
